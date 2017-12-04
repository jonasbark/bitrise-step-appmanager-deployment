#!/bin/bash
set -ex

/bin/echo -n "Uploading ${IPA_FILENAME} as ${IOS_APP_VERSION_NAME} (${IOS_APP_VERSION_CODE}) to AppManager... "
JSON=$( curl -s $appManUrl$appId -F api_key=$api_key -F iosIpaFile="@$ipaPath" -F addedIosVersion="${IOS_APP_VERSION_NAME} (${IOS_APP_VERSION_CODE})" -A "App Manager Upload" )
/bin/echo -n JSON

exit 0
