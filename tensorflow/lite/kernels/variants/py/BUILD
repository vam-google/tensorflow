load("//tensorflow:strict.default.bzl", "py_strict_test")
load("@local_xla//rules_pywrap:pywrap.bzl", "pybind_extension")

pybind_extension(
    name = "register_list_ops_py",
    srcs = ["register_list_ops_py.cc"],
    enable_stub_generation = True,
    pytype_srcs = [
        "register_list_ops_py.pyi",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//tensorflow/lite:mutable_op_resolver",
        "//tensorflow/lite/kernels/variants:list_ops_lib",
    ],
)

py_strict_test(
    name = "end_to_end_test",
    srcs = ["end_to_end_test.py"],
    tags = ["nochromiumos_arm"],
    deps = [
        ":register_list_ops_py",
        "@absl_py//absl/testing:parameterized",
        #internal proto upb dep
        "//third_party/py/numpy",
        "//tensorflow:tensorflow_py",
        "//tensorflow/lite/python:interpreter",
        "//tensorflow/python/ops:list_ops",
        "//tensorflow/python/platform:test",
    ],
)
