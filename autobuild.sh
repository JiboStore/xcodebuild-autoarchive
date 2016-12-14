# variables
PROJ_DIR="./targetproject/casinodeluxebyigg"
CONFIGURATION=Release

# temp build directory
BUILD_TEMP_DIR="/Development/project/build-dir/build"
BUILD_DERIVED_DATA_DIR="/Development/project/build-dir/build/DerivedData"

# archive variables
PROJ_NAME=casinodeluxebyigg
SCHEME_NAME=casinodeluxebyigg

# ipa variables
APP_NAME=casinodeluxebyigg.app
IPA_LOC="/Development/project/build-dir"
IPA_NAME=casinodeluxebyigg.ipa
DEVELOPER_NAME="casino bzbee igg (QSKC8ABWRD)"
PROVISION_PROFILE="./provisioning/CD_Dev.mobileprovision"

# archive folder
ARCH_XCODE_FOLDER=~/Library/Developer/Xcode/Archives
ARCH_DATE_FOLDER=`date '+%Y-%m-%d'`

# start
rm -rf "${IPA_LOC}"

cd ${PROJ_DIR}
xcodebuild -target ${PROJ_NAME} -sdk iphoneos -configuration ${CONFIGURATION} -xcconfig build-dir.xcconfig
xcodebuild archive -project "${PROJ_NAME}.xcodeproj" -scheme ${SCHEME_NAME} -xcconfig build-dir.xcconfig

CURRENT_DIR=`pwd`

cd ${ARCH_XCODE_FOLDER}
cd ${ARCH_DATE_FOLDER}

LATEST_FILE=`ls -rt | tail -1`
cp -R "${LATEST_FILE}" "${IPA_LOC}"

# ok - ori
#xcodebuild -target ${PROJ_NAME} -sdk iphoneos -configuration ${CONFIGURATION}
#xcodebuild archive -project "${PROJ_NAME}.xcodeproj" -scheme ${SCHEME_NAME}

#xcodebuild archive -project "${PROJ_NAME}.xcodeproj" -scheme ${SCHEME_NAME} -xcconfig build-dir.xcconfig -derivedDataPath ${BUILD_DERIVED_DATA_DIR}