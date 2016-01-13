API_KEY="63b6fc0260abf0e9fffe13ddbf6beeb32fffa737"
BUILD_SECRET=3858246cedaf6cf67fda7a4699bb5a037e27148604943f5d3cf3b48274218b18
IPA_PATH=./JenkinsIPAExport/YouGov.ipa

./Frameworks/Crashlytics.framework/submit $API_KEY $BUILD_SECRET -ipaPath $IPA_PATH
