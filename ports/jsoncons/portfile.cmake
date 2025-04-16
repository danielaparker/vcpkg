# header-only library
vcpkg_minimum_required(VERSION 2022-10-12) # for ${VERSION}

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO danielaparker/jsoncons
    REF v${VERSION}
<<<<<<< HEAD
    SHA512 31dcd40243ca695a2d038b2474b4c1ab2bf3df58ffe4fe11d2f084f7bf06b0a0327b4385b2aa60ce49a0a76e176d8c517cf759108f80860d9e2b5b6f11446aee
=======
    SHA512 763e56ed7469d81e44e04ec029806fa08026cb3c33caf1264a24068007226e26ea38922840d7e4b2e7529f99564c1fb6bca48f84a4a3f383733d37af8d13cc99
>>>>>>> 711466ff1cfc1239e93bf8010503eb161671be4b
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DJSONCONS_BUILD_TESTS=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH "lib/cmake/${PORT}")
vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/lib")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
