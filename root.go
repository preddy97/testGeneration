package main

import (
  "fmt"
  "io/ioutil"
  "os"
  "encoding/json"
  "strings"
)

var name string
var restName string
var user string
var model map[string]interface{}
var children []map[string]interface{}

func main() {

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

    children = getChildren(parsed)
    processChildren()


    osRemove(strings.Join([]string{"features/",restName,".feature"},""))
    f := osCreate(strings.Join([]string{"features/",restName,".feature"},""))
    initialize(f)
    addGet(f)
}

func processChildren() {

    f := osCreate("rootSpecs.txt")
    for i := 0; i<len(children); i++ {
        rest := children[i]["rest_name"].(string)
        f.WriteString(rest)
        f.WriteString("\t")

        if (children[i]["create"]==true) {
            f.WriteString("1\t")
        } else {
            f.WriteString("0\t")
        }
        if (children[i]["delete"]==true) {
            f.WriteString("1\t")
        } else {
            f.WriteString("0\t")
        }
        if (children[i]["get"]==true) {
            f.WriteString("1\t")
        } else {
            f.WriteString("0\t")
        }
        if (children[i]["update"]==true) {
            f.WriteString("1\t")
        } else {
            f.WriteString("0\t")
        }

        f.WriteString("\n")
    }
}

func addGet(f *os.File) {
    f.WriteString(strings.Join([]string{"\tScenario:",name,"Get\n"}," "))
    f.WriteString(strings.Join([]string{"\t\tWhen",user,"requests the",restName,"\n"}," "))
    f.WriteString("\t\tThen the request should be successful\n\n")
}

func initialize(f *os.File) {
    f.WriteString(strings.Join([]string{"Feature:",name,"\n"}," "))
    f.WriteString("\tBackground:\n")
    f.WriteString("\t\tGiven I'm going to use the API: localhost:8080\n")
    f.WriteString("\t\tAnd the following authentications:\n")
    f.WriteString("\t\t| name   | namespace  |\n")
    f.WriteString("\t\t| Pranav | SuperAdmin |\n")
}

func osCreate(path string) *os.File {
    f, err := os.Create(path)
    if err != nil {
        os.Exit(1)
    }
    return f
}

func osRemove (path string) {
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