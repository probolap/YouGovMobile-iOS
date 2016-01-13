xcodebuild -alltargets clean

rm -rf ./JenkinsBuild/*

xcodebuild -target YouGov PROVISIONING_PROFILE="da99eb54-ba0b-4f1d-9a69-40e749f7a29c" CONFIGURATION_BUILD_DIR=JenkinsBuild

rm -rf ./JenkinsArchive/*

xcodebuild -scheme YouGov archive PROVISIONING_PROFILE="da99eb54-ba0b-4f1d-9a69-40e749f7a29c" CODE_SIGN_IDENTITY="iPhone Distribution: Genentech Inc" -archivePath ./JenkinsArchive/YouGov.xcarchive

rm -rf ./JenkinsIPAExport/*

xcodebuild -exportArchive -exportFormat IPA -exportProvisioningProfile Kinvey\ PoC\ Distribution -archivePath ./JenkinsArchive/YouGov.xcarchive -exportPath ./JenkinsIPAExport/YouGov.ipa
