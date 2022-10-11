#!/bin/bash
Recipient=”amitrajitdas31@gmail.com”
Subject=”Greeting”
Message=”Welcome to our Hacktoberfest 2022”
`mail -s $Subject $Recipient <<< $Message`