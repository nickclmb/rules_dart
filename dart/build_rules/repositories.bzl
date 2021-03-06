load("//dart/build_rules/internal:pub.bzl", "pub_repository")
load("//dart/build_rules/internal:sdk.bzl", "sdk_repository", "SDK_BUILD_FILE")

"""Required Repositories for Dart Build Rules."""

def dart_repositories(local_sdk = None):
  if local_sdk:
    native.new_local_repository(
        name = "dart_sdk",
        path = local_sdk,
        build_file_content = SDK_BUILD_FILE,
    )
  else:
    sdk_repository(
        name = "dart_sdk",
    )
  _pub_repositories()

def _pub_repositories():
  pub_repository(
      name = "vendor_args",
      output = ".",
      package = "args",
      version = "0.13.6",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_async",
      output = ".",
      package = "async",
      version = "1.11.2",
      pub_deps = ["collection"],
  )

  pub_repository(
      name = "vendor_charcode",
      output = ".",
      package = "charcode",
      version = "1.1.0",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_collection",
      output = ".",
      package = "collection",
      version = "1.9.1",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_convert",
      output = ".",
      package = "convert",
      version = "2.0.1",
      pub_deps = ["charcode", "typed_data"],
  )

  pub_repository(
      name = "vendor_csslib",
      output = ".",
      package = "csslib",
      version = "0.13.2",
      pub_deps = [
          "args",
          "logging",
          "path",
          "source_span",
      ],
  )

  pub_repository(
      name = "vendor_html",
      output = ".",
      package = "html",
      version = "0.13.0",
      pub_deps = [
          "csslib",
          "source_span",
          "utf",
      ],
  )

  pub_repository(
      name = "vendor_http_parser",
      output = ".",
      package = "http_parser",
      version = "3.0.3",
      pub_deps = [
          "collection",
          "source_span",
          "string_scanner",
      ],
  )

  pub_repository(
      name = "vendor_js",
      output = ".",
      package = "js",
      version = "0.6.1",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_logging",
      output = ".",
      package = "logging",
      version = "0.11.3+1",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_mime",
      output = ".",
      package = "mime",
      version = "0.9.3",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_path",
      output = ".",
      package = "path",
      version = "1.4.0",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_shelf",
      output = ".",
      package = "shelf",
      version = "0.6.5+3",
      pub_deps = [
          "async",
          "http_parser",
          "path",
          "stack_trace",
          "stream_channel",
      ],
  )

  pub_repository(
      name = "vendor_shelf_static",
      output = ".",
      package = "shelf_static",
      version = "0.2.4",
      pub_deps = [
          "convert",
          "http_parser",
          "mime",
          "path",
          "shelf",
      ],
  )

  pub_repository(
      name = "vendor_source_span",
      output = ".",
      package = "source_span",
      version = "1.2.3",
      pub_deps = ["path"],
  )

  pub_repository(
      name = "vendor_stack_trace",
      output = ".",
      package = "stack_trace",
      version = "1.6.8",
      pub_deps = ["path"],
  )

  pub_repository(
      name = "vendor_stream_channel",
      output = ".",
      package = "stream_channel",
      version = "1.5.0",
      pub_deps = ["async", "stack_trace"],
  )

  pub_repository(
      name = "vendor_string_scanner",
      output = ".",
      package = "string_scanner",
      version = "1.0.0",
      pub_deps = ["charcode", "source_span"],
  )

  pub_repository(
      name = "vendor_typed_data",
      output = ".",
      package = "typed_data",
      version = "1.1.3",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_utf",
      output = ".",
      package = "utf",
      version = "0.9.0+3",
      pub_deps = [],
  )

  pub_repository(
      name = "vendor_watcher",
      output = ".",
      package = "watcher",
      version = "0.9.7+3",
      pub_deps = [
          "async",
          "collection",
          "path",
      ],
  )
