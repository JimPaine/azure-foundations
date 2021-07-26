#!/bin/bash

exit_with_error() {
  echo "Usage: $0 -t {TENANT} -l {LOCATION} -p {DEPLOY_POLICIES}" 1>&2
  exit 1
}

while getopts :t:l:p: option
do
  case "${option}"
    in
      t) tenant=${OPTARG};;
      l) location=${OPTARG};;
      p) deploy_policies=${OPTARG};;
      *) exit_with_error;;
  esac
done

az login --tenant "$tenant"

az role assignment create  \
  --scope '/' \
  --role 'Owner' \
  --assignee-object-id "$(az ad signed-in-user show --query objectId -o tsv)"

az deployment tenant create \
  --name azure-foundations \
  --location "$location" \
  --template-file main.bicep

if [ $deploy_policies == "true" ]
then
  echo "deploying policies"
fi