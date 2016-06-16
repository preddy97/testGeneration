package main

import (
  "fmt"
  "io/ioutil"
  "os"
  "strings"
  "os/exec"
)

func main() {

    rootPath := strings.Join([]string{os.Args[1],"/root.spec"},"")
    rootCMD := exec.Command("go", "run", "root.go", rootPath)
    rootCMD.Run()

    files, err := ioutil.ReadDir(os.Args[1])
    if err != nil {
        fmt.Printf("%s", err)
        os.Exit(1)
    }

    for _, file := range files {
        if strings.HasSuffix(file.Name(),".spec") {
            if file.Name()!="root.spec" {
                filePath := strings.Join([]string{os.Args[1],file.Name()},"/")
                cmd := exec.Command("go", "run", "non-root.go",filePath)
                cmd.Run()
            }
        }
    }
}