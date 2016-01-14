

PROVISIONING_PROFILE_UUID="da99eb54-ba0b-4f1d-9a69-40e749f7a29c"
PROVISIONING_PROFILE_NAME="Kinvey PoC Distribution"
CODE_SIGN_IDENTITY_NAME="iPhone Distribution: Genentech Inc"
ARCHIVE_PATH="./JenkinsArchive/YouGov.xcarchive"
EXPORT_PATH="./JenkinsIPAExport/YouGov.ipa"

xcodebuild -alltargets clean

rm -rf ./JenkinsBuild/*

xcodebuild -target YouGov PROVISIONING_PROFILE=$PROVISIONING_PROFILE_UUID CONFIGURATION_BUILD_DIR=JenkinsBuild


xcodebuild clean

xcodebuild test -scheme 'YouGov' -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.2'


#rm -rf ./JenkinsArchive/*

#xcodebuild -scheme YouGov archive PROVISIONING_PROFILE="$PROVISIONING_PROFILE_UUID" CODE_SIGN_IDENTITY="$CODE_SIGN_IDENTITY_NAME" -archivePath "$ARCHIVE_PATH"

#rm -rf ./JenkinsIPAExport/*

#xcodebuild -exportArchive -exportFormat IPA -exportProvisioningProfile "$PROVISIONING_PROFILE_NAME" -archivePath "$ARCHIVE_PATH" -exportPath "$EXPORT_PATH"
