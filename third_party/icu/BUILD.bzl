"""Builds ICU library."""

package(
    default_visibility = ["//visibility:public"],
)

licenses(["notice"])  # Apache 2.0

exports_files([
    "icu4c/LICENSE",
    "icu4j/main/shared/licenses/LICENSE",
])

cc_library(
    name = "common",
    srcs = glob(
        [
            "icu4c/source/common/*.c",
            "icu4c/source/common/*.cpp",
            "icu4c/source/stubdata/*.cpp",
        ],
    ),
    hdrs = glob(["icu4c/source/common/*.h"]),
    includes = [
        "icu4c/source/common",
    ],
    alwayslink = 1,
    copts = [
        "-DU_COMMON_IMPLEMENTATION",
    ],
    tags = ["requires-rtti"],
)
