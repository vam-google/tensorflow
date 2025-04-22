"""Hermetic Python initialization. Consult the WORKSPACE on how to use it."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def python_init_rules():
    http_archive(
        name = "rules_python",
        sha256 = "2cc26bbd53854ceb76dd42a834b1002cd4ba7f8df35440cf03482e045affc244",
        strip_prefix = "rules_python-1.3.0",
        url = "https://github.com/bazel-contrib/rules_python/archive/refs/tags/1.3.0.tar.gz",
        patch_args = ["-p1"],
    )

#    native.local_repository(
#        name = "rules_python",
#        path = "/usr/local/google/home/vam/_/projects/github/vam-google/rules_python",
#    )