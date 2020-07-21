load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def helm_repositories():
    skylib_version = "1.0.2"
    http_archive(
        name = "bazel_skylib",
        urls = [
            "https://github.com/bazelbuild/bazel-skylib/archive/%s.tar.gz" % skylib_version,
        ],
        strip_prefix = "bazel-skylib-1.0.2",
        sha256 = "e5d90f0ec952883d56747b7604e2a15ee36e288bb556c3d0ed33e818a4d971f2",
    )
    helm_version = "3.2.4"
    http_archive(
        name = "helm",
        urls = ["https://get.helm.sh/helm-v%s-linux-amd64.tar.gz" % helm_version],
        sha256 = "c6b7aa7e4ffc66e8abb4be328f71d48c643cb8f398d95c74d075cfb348710e1d",
        build_file = "@com_github_deviavir_rules_helm//:helm.BUILD",
    )

    http_archive(
        name = "helm_osx",
        urls = ["https://get.helm.sh/helm-v%s-darwin-amd64.tar.gz" % helm_version],
        sha256 = "05c7748da0ea8d5f85576491cd3c615f94063f20986fd82a0f5658ddc286cdb1",
        build_file = "@com_github_deviavir_rules_helm//:helm.BUILD",
    )
