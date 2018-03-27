# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/polygon
    REF boost-1.66.0
    SHA512 7d8b3b275ab5c010a3c1736e59290b514d44080a7fec9e26b28d39c3df2346ac9f5d762b84c6f55296452bbcdf3a8cff5ac3f2895a99be90c4630efb04229157
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
