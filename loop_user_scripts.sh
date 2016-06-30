#!/bin/bash

# Loops through user environment scripts at /Library/YourOrgName/userscripts


userScriptDir="/Library/YourOrgName/userscripts"
for UserEnvScripts in ${userScriptDir}/*
do
  $UserEnvScripts
done