source bin/common.sh
# execution process by atom id and process id

#Gather and valid inputs
inputs "$@"

if [ "$?" -gt "0" ]
then
        return 255;
fi

#Query ids (atom id, process id)

source bin/queryAtom.sh atomName="$atomName" atomStatus=online atomType=$atomType
source bin/queryProcess.sh processName="$processName"

#prepare JSON to call API

ARGUMENTS=(atomId processId)
JSON_FILE=json/executeProcess.json
createJSON

# call atomsphere API
URL=$baseURL/executeProcess
callAPI

# clean variables and files
clean
