# variables
PROJ_DIR="./targetproject/casinodeluxebyigg"
##PROJ_DIR="/Development/project/casino/client/examples/SlotMachine/proj.ios"

# archive variables
PROJ_NAME=casinodeluxebyigg
SCHEME_NAME=casinodeluxebyigg
#PROJ_NAME=CasinoByIGG
#SCHEME_NAME=CasinoByIGG

# ipa variables
APP_NAME=casinodeluxebyigg.app
IPA_NAME=casinodeluxebyigg.ipa
##APP_NAME=CasinoByIGG.app
##IPA_NAME=CasinoByIGG.ipa

IPA_LOC="/Development/project/build-dir"

#DEVELOPER_NAME="casino bzbee igg (QSKC8ABWRD)"
DEVELOPER_NAME="IGG.COM (QT4K5KS365)"
PROVISION_PROFILE="./provisioning/CD_Dis.mobileprovision"

# temp build directory
BUILD_TEMP_DIR="${IPA_LOC}/build"
BUILD_DERIVED_DATA_DIR="${BUILD_TEMP_DIR}/DerivedData"

# archive folder
ARCH_XCODE_FOLDER=~/Library/Developer/Xcode/Archives
ARCH_DATE_FOLDER=`date '+%Y-%m-%d'`

EXPORT_PLIST=appstore.plist
SIGNED_OUT_DIR="${IPA_LOC}/signed"

CONFIGURATION=Release

# plist file
PLIST_FILE="${PROJ_DIR}/Info.plist"
PLIST_BUDDY_EXE="/usr/libexec/PlistBuddy"
PLIST_CMD_UPDATE_BUNDLE_VER="Set :CFBundleVersion $(git rev-list --all | wc -l)"
#PLIST_CMD_UPDATE_BUNDLE_VER="Set :CFBundleVersion $(git svn find-rev $(git rev-parse master))" # casino
PLIST_CMD_UPDATE_BUILD_REV="Set :IGGBuildRev $(git rev-parse --short HEAD)"
echo -n "${PLIST_FILE}" | xargs -0 "${PLIST_BUDDY_EXE}" -c "${PLIST_CMD_UPDATE_BUNDLE_VER}"
echo -n "${PLIST_FILE}" | xargs -0 "${PLIST_BUDDY_EXE}" -c "${PLIST_CMD_UPDATE_BUILD_REV}"

# start
