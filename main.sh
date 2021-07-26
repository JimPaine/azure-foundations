#!/bin/bash

az deployment tenant create \
  --name azure-foundations \
  --location uksouth \
  --template-file main.bicep
