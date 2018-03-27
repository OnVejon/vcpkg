# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/dynamic_bitset
    REF boost-1.66.0
    SHA512 fa9bc10bbcd7ea907acf11abfd245fa70e4d82e5f7fe5b295b65e404ed19b276c06cd68ccec36a2276e76985a20c2a788c99e8cee095f24c04d0c8c5f5952135
    HEAD_REF master
)

message(STATUS "Packaging headers")

file(
    COPY ${SOURCE_PATH}/include/boost
    DESTINATION ${CURRENT_PACKAGES_DIR}/include
)

message(STATUS "Packaging headers done")

vcpkg_download_distfile(ARCHIVE
    URLS "https://raw.githubusercontent.com/boostorg/boost/boost-1.66.0/LICENSE_1_0.txt"
    FILENAME "boost_LICENSE_1_0.txt"
    SHA512 d6078467835dba8932314c1c1e945569a64b065474d7aced27c9a7acc391d52e9f234138ed9f1aa9cd576f25f12f557e0b733c14891d42c16ecdc4a7bd4d60b8
)

file(INSTALL ${ARCHIVE} DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
