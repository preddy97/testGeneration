package main

import (
  "fmt"
  "io/ioutil"
  "os"
  "os/exec"
  "encoding/json"
  "strings"
  "math/rand"
)

const Repetitions int = 5

var name string
var restName string
var resourceName string
var user string
var model map[string]interface{}
var attributes []map[string]interface{}
var children []map[string]interface{}
var stringsDict []string
var integerDict []string
var externalDict []string
var kvpDict []string

func main() {

    prepare()

    osRemove(strings.Join([]string{"features/",restName,".feature"},""))
    f := osCreate(strings.Join([]string{"features/",restName,".feature"},""))
    initialize(f)
    parseRootSpecs(f)
    addIDOperations(f)
}

func addIDOperations(f *os.File) {
    f.WriteString(strings.Join([]string{"\tScenario:",name,"Specific ID Operations\n"}," "))
    for i := 0; i<Repetitions; i++ {
        f.WriteString(strings.Join([]string{"\t\tWhen ",user," chooses a random ", restName,
                                    " from all ", resourceName, "\n"},""))
        if model["get"]==true {
            addGet(f)
        }
        if model["update"]==true {
            addUpdate(f)
        }
        if model["delete"]==true {
            addDelete(f)
        }
    }
}

func addGet(f *os.File) {
    f.WriteString(strings.Join([]string{"\t\tWhen",user,"asks for the random object from",
                                    resourceName,"\n"}," "))
    f.WriteString("\t\tThen the request should be successful\n\n")
}

func addUpdate(f *os.File) {
    possibleAttributes, keys := getPossibleAttributes("update")
    temp := append([]string{"\t\t\t"},keys...)
    header := strings.Join(append(temp,"\n"),"|")
    pretext := strings.Join([]string{"\t\tWhen ",user," updates the random object from ",
                                        resourceName,":\n"},"")
    posttext := "\t\tThen the update should be successful\n"

    opt := writeSingleTest(f, header, pretext, posttext, keys, possibleAttributes)

    if (model["get"]==true) {
        f.WriteString(strings.Join([]string{"\t\tWhen",user,"asks for the random object from",
                                        resourceName,"\n"}," "))
        f.WriteString("\t\tThen the request should be successful\n")
        f.WriteString("\t\tAnd the body of the response should contain:\n")
        f.WriteString(header)
        f.WriteString(opt)
    }
    f.WriteString("\n")
}

func addDelete(f *os.File) {
    f.WriteString(strings.Join([]string{"\t\tWhen",user,"deletes the random object from",
                                    resourceName,"\n"}," "))
    f.WriteString("\t\tThen the delete should be successful\n\n")
}

func parseRootSpecs(f *os.File) {
    contents, err := ioutil.ReadFile("rootSpecs.txt")
    if err != nil {
        fmt.Printf("%s", err)
        os.Exit(1)
    }

    temp := strings.Split(string(contents), "\n")
    for i := 0; i<len(temp); i++ {
        tempWords := strings.Split(temp[i], "\t")
        if (tempWords[0]==restName) {
            executeRootCommands(f, tempWords)
        }
    }
}

func executeRootCommands(f *os.File, commands []string) {
    if commands[1]=="1" {
        rootCreate(f)
    }
    if commands[2]=="1" {
        rootDelete(f)
    }
    if commands[3]=="1" {
        rootGet(f)
    }
    if commands[4]=="1" {
        rootUpdate(f)
    }
}

func rootCreate(f *os.File) {
    f.WriteString(strings.Join([]string{"\tScenario: Root Create",name,"\n"}," "))
    possibleAttributes, keys := getPossibleAttributes("create")
    temp := append([]string{"\t\t\t"},keys...)

    header := strings.Join(append(temp,"\n"),"|")
    pretext := strings.Join([]string{"\t\tWhen ",user," creates a ",
                                restName," in ",resourceName,":\n"},"")
    posttext := "\t\tThen the creation should be successful\n\n"

    populateTests(f, header, pretext, posttext, keys, possibleAttributes)

}

func rootDelete(f *os.File) {
    fmt.Println("Delete doesn't make sense from root - unimplemented")
}

func rootGet(f *os.File) {
    f.WriteString(strings.Join([]string{"\tScenario: Root Get",name,"\n"}," "))
    f.WriteString(strings.Join([]string{"\t\tWhen ",user," requests ",resourceName,"\n"},""))
    f.WriteString("\t\tThen the request should be successful\n\n")
}

func rootUpdate(f *os.File) {
    fmt.Println("Update doesn't make sense from root - unimplemented")
}

func getPossibleAttributes(action string) (possibleAttributes map[string][]string, keys []string) {
    possibleAttributes = make(map[string][]string)
    keys = []string{}
    for i := 0; i<len(attributes); i++ {
        if attributes[i]["allowed_choices"]!=nil ||
                attributes[i]["autogenerated"]==false &&
                (attributes[i]["creation_only"]==false || action=="create") &&
                (attributes[i]["primary_key"]!=true || action=="create"){
            attributeName := attributes[i]["name"].(string)
            if attributes[i]["allowed_choices"]!=nil {
                temp := attributes[i]["allowed_choices"].([]interface{})
                choices := make([]string, len(temp))
                for i := range temp {
                    if (temp[i].(string)!="Deleted") {
                        choices[i] = temp[i].(string)
                    }
                }
                possibleAttributes[attributeName]=choices
                keys = append(keys, attributeName)
            } else if attributes[i]["name"]=="keyValuePair" {
                possibleAttributes[attributeName]=kvpDict
                keys = append(keys, attributeName)
            } else if attributes[i]["type"]=="string" {
                possibleAttributes[attributeName] = stringsDict
                keys = append(keys, attributeName)
            } else if attributes[i]["type"]=="integer" {
                possibleAttributes[attributeName] = integerDict
                keys = append(keys, attributeName)
            } else if attributes[i]["type"]=="external" {
                possibleAttributes[attributeName] = externalDict
            }
        }
    }
    return possibleAttributes, keys
}

func populateTests(f *os.File, header string, pretext string, post string,
                    keys []string, possibleAttributes map[string][]string) {
    for i := 0; i<Repetitions; i++ {
        writeSingleTest(f, header, pretext, post, keys, possibleAttributes)
    }
}

func writeSingleTest(f *os.File, header string, pretext string, post string,
                        keys []string, possibleAttributes map[string][]string) string {
    f.WriteString(pretext)
    f.WriteString(header)
    temp := []string{}
    temp = append(temp, "\t\t\t")
    for j:= 0; j<len(keys); j++ {
        options := possibleAttributes[keys[j]]
        temp = append(temp, options[rand.Intn(len(options))])
    }
    temp = append(temp, "\n")
    optionsString := strings.Join(temp,"|")
    f.WriteString(optionsString)
    f.WriteString(post)
    return optionsString
}

func initialize(f *os.File) {
    f.WriteString(strings.Join([]string{"Feature:",name,"\n"}," "))
    f.WriteString("\tBackground:\n")
    f.WriteString("\t\tGiven I'm going to use the API: https://squall.aporeto.com:8443\n")
    f.WriteString("\t\tAnd the following authentications:\n")
    f.WriteString("\t\t| name       | namespace  |\n")
    f.WriteString("\t\t| SuperAdmin | SuperAdmin |\n\n")
}

func runCucumber() {
    out,_ := exec.Command("cucumber").Output()
    splits := strings.Split(string(out),"\n")
    fmt.Println(splits[len(splits)-4],"\n",splits[len(splits)-3],"\n",splits[len(splits)-2])
    fmt.Println(string(out))
}

func osCreate(path string) *os.File {
    f, err := os.Create(path)
    if err != nil {
        os.Exit(1)
    }
    return f
}

func osRemove(path string) {
    os.Remove(path)
}

func getChildren(parsed map[string]interface{}) []map[string]interface{} {
    temp := parsed["children"].([]interface{})

    var children = make([]map[string]interface{},len(temp))
    for i := 0; i<len(temp); i++ {
        children[i] = temp[i].(map[string]interface{})
    }
    return children
}

func prepare() {
    addDictionaries()

    contents, err := ioutil.ReadFile(os.Args[1])
    if err != nil {
        fmt.Printf("%s", err)
        os.Exit(1)
    }

    var parsed map[string]interface{}
    json.Unmarshal(contents,&parsed)

    model = parsed["model"].(map[string]interface{})
    name = model["entity_name"].(string)
    restName = model["rest_name"].(string)
    user = "SuperAdmin"
    resourceName = model["resource_name"].(string)

    attributes = getAttributes(parsed, model)
    children = getChildren(parsed)
}

func getAttributes(parsed map[string]interface{}, currModel map[string]interface{}) []map[string]interface{} {

    temp := parsed["attributes"].([]interface{})

    var attributes []map[string]interface{}
    var listAttrib = make(map[string]bool)
    for i := 0; i<len(temp); i++ {
        tempMap := temp[i].(map[string]interface{})
        if (listAttrib[tempMap["name"].(string)]==false) {
            attributes = append(attributes, tempMap)
            listAttrib[tempMap["name"].(string)]=true
        }
    }

    parents := currModel["extends"].([]interface{})
    for i := 0; i<len(parents); i++ {
        tempParent := parents[i].(string)
        parPath := strings.Join([]string{"/Users/preddy/squall/specs/",tempParent,".spec"},"")
        contents, _ := ioutil.ReadFile(parPath)

        var parParsed map[string]interface{}
        json.Unmarshal(contents,&parParsed)

        temp = parParsed["attributes"].([]interface{})
        for j := 0; j<len(temp); j++ {
            tempMap := temp[j].(map[string]interface{})
            if (listAttrib[tempMap["name"].(string)]==false) {
                attributes = append(attributes, tempMap)
                listAttrib[tempMap["name"].(string)]=true
            }
        }
    }
    return attributes
}

func addDictionaries() {
    temp, _ := ioutil.ReadFile("dictionaries/dictionary_string.txt")
    stringsDict = strings.Split(string(temp),"\n")
    temp, _ = ioutil.ReadFile("dictionaries/dictionary_integer.txt")
    integerDict = strings.Split(string(temp),"\n")
    temp, _ = ioutil.ReadFile("dictionaries/dictionary_external.txt")
    externalDict = strings.Split(string(temp),"\n")
    temp, _ = ioutil.ReadFile("dictionaries/dictionary_kvp.txt")
    kvpDict = strings.Split(string(temp),"\n")
}
