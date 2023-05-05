#!/bin/bash

#sourceRepositoryOwner info gets from Stash pull req with upper case
#convert to lower case from upper case and keep to as inject env. variables

assignee=$( tr '[A-Z]' '[a-z]' <<< ${sourceRepositoryOwner})

echo user=${assignee:1:30} > export_props.properties
echo ${pullRequestTitle} >> export_props.properties

