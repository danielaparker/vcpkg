﻿# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/cobalt
    REF boost-${VERSION}
    SHA512 a92ff4050772b61035121f944d81d4a9d6d2da858dedc0956ad850132657c80c660a8839a99597443751744577dd5b0958239e99d948d3036c85b8361151aa27
    HEAD_REF master
    PATCHES
        fail-on-compiler-not-supported.patch
        
)

set(FEATURE_OPTIONS "")
boost_configure_and_install(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)