# variables
PROJ_DIR="./targetproject/casinodeluxebyigg"
CONFIGURATION=Release

# archive variables
PROJ_NAME=casinodeluxebyigg
SCHEME_NAME=casinodeluxebyigg

# ipa variables
APP_NAME=casinodeluxebyigg.app
IPA_LOC="../IpaLoc"
IPA_NAME=casinodeluxebyigg.ipa
DEVELOPER_NAME="casino bzbee igg (QSKC8ABWRD)"
PROVISION_PROFILE="./provisioning/CD_Dev.mobileprovision"

cd ${PROJ_DIR}
xcodebuild -target ${PROJ_NAME} -sdk iphoneos -configuration ${CONFIGURATION}
xcodebuild archive -project "${PROJ_NAME}.xcodeproj" -scheme ${SCHEME_NAME}