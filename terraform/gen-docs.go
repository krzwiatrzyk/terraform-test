package main

import (
	"text/template"
	"os/exec"
	"os"
	"log"
)

var temp *template.Template

type docs struct {
	Modules []string
}

var tfDocs docs

func init() {
    temp = template.Must(template.ParseFiles("README.md.tmpl"))
}

func main() {
	file, err := os.OpenFile("README.md", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatalln(err)
	}
	defer file.Close()

	cmd := exec.Command("task", "docs:jq-get-data", "-s")
	out, err := cmd.Output()
	if err != nil {
		log.Fatalln(err)
	}
	tfDocs.Modules = append(tfDocs.Modules, string(out))

	// err = temp.Execute(os.Stdout, tfDocs)
	err = temp.Execute(file, tfDocs)
	if err != nil {
        log.Fatalln(err)
    }
}

