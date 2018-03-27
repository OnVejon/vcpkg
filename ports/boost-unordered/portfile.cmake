# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/unordered
    REF boost-1.66.0
    SHA512 4abb2d6a2847c28ecd2324afd4caf46a9fe2597e3bceaf2fe430cb82688ce6584137356fd3dff5fe1ab60ab8a51460821d9dd78c14d4e0fb6e11c4dee7cc0adb
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
