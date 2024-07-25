load("@local_xla//rules_pywrap:pywrap.bzl", "pybind_extension")
load("//tensorflow:tensorflow.bzl", "VERSION")

package(
    # copybara:uncomment default_applicable_licenses = ["//tensorflow:license"],
    default_visibility = [
        "//tensorflow/compiler/mlir/lite/experimental/tac:__subpackages__",
    ],
    licenses = ["notice"],
)

cc_library(
    name = "tac_wrapper_lib",
    srcs = ["tac_wrapper.cc"],
    hdrs = [
        "tac_wrapper.h",
    ],
    deps = [
        "//tensorflow/compiler/mlir/lite/experimental/tac:tac_importer_exporter",
        "//tensorflow/compiler/mlir/lite/experimental/tac:target_aware_conversion",
        "//tensorflow/compiler/mlir/lite/experimental/tac:tflite_importer_exporter",
        "//tensorflow/compiler/mlir/lite/experimental/tac/hardwares:all-target-hardwares",
        "//tensorflow/compiler/mlir/tensorflow",
        "//third_party/python_runtime:headers",  # buildcleaner: keep
        "@com_google_absl//absl/status",
        "@llvm-project//mlir:IR",
    ],
)

pybind_extension(
    name = "_pywrap_tac_wrapper",
    srcs = [
        "tac_wrapper_pybind11.cc",
        "tac_wrapper.h",
    ],
    data = [
        "_pywrap_tac_wrapper.pyi",
    ],
    deps = [
        ":tac_wrapper_lib",
        "//tensorflow/python/lib/core:pybind11_lib",
        "//third_party/python_runtime:headers",
    ],
)
