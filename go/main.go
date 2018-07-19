package main

import (
	"flag"
	"log"
	"os"

	"github.com/lagoon-platform/api"
)

const (
	FLAGGED_WITH string = "flaged with %s : %v"
	FLAG_SCRIPT  string = "log the api request as script"
	FLAG_TIME    string = "log the execution time"
	FLAG_PORT    string = "the running port of the app"

	// Prefix for the Api logs
	ApiLogPrefix string = "Lagoon API LOG:"
)

func main() {

	var fPort string

	logger := log.New(os.Stdout, ApiLogPrefix, log.Ldate|log.Ltime|log.Lmicroseconds)

	fScript := flag.Bool("logScript", false, FLAG_SCRIPT)
	fTime := flag.Bool("logTime", false, FLAG_TIME)
	flag.StringVar(&fPort, "port", "9999", FLAG_PORT)
	flag.Parse()

	log.Printf(FLAGGED_WITH, "fScript", fScript)
	log.Printf(FLAGGED_WITH, "fTime", fTime)
	log.Printf(FLAGGED_WITH, "fPort", fPort)

	api.StartApi(*logger, *fScript, *fTime, fPort)

}
