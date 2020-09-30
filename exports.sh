#!/bin/bash

# Mostly constants
export h1="Content-Type: application/json"
export h2="Accept: application/json"
export WORKSPACE=`pwd`

# Get values from user or parameter store
# The following credentials can be stored in parameter store and retrieved dynamically 
# Example to retrieve form an AWS store "$(aws ssm get-parameter --region xx --with-decryption --output text --query Parameter.Value --name /Parameter.name)

export accountName="Wipro Technologies"
export accountId="wiprotechnologies-JYRW2N"
export authToken="BOOMI_TOKEN.nimmagadda.tejaswi@wipro.com:43ff3d09-56f5-448b-b64c-bf2e0ed5e8ab"
export gitRepoURL="https://github.com/pasha841/CLIDEVOPS.git"
export gitUserName="pasha841"
export gitUserEmail="pashadevops404@gmail.com"
export gitRepoName="CLIDEVOPS" # Top level folder of the GIT REPO
export atomName="atom cloud"
export processName="Employee_CSV_TO_XML_Process"

# Keys that can change
export VERBOSE="false" # Bash verbose output; set to true only for testing, will slow execution.
export SLEEP_TIMER=0.2 # Delays curl request to the platform to set the rate under 5 requests/second
export gitOption="CLONE" # This clones the repo; else default is to create a release tag. Check gitPush.sh file


# Derived keys
export baseURL=https://api.boomi.com/api/rest/v1/$accountId
