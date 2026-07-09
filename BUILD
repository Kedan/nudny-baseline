
cc_library(
	name = "nudny-baseline",
	srcs = [
		"src/nudny/baseline/baseline.cpp",
	],
	hdrs = [
		"include/nudny/baseline/baseline.hpp",
	],
	includes = [
		"include",
	],
	visibility = [
		"//visibility:public",
	],
	deps = [ 
		"@nlohmann_json//:json",
	],
)

cc_test(
	name = "nudny-baseline-test",
	includes = ["test/include"],
	srcs = glob([
		"test/include/nudny/baseline/nudny_baseline_test.hpp",
		"test/src/nudny/baseline/nudny_baseline_test.cpp"
	]),
	copts = [
		"-Wall",
		"-Wextra",
		"-Wpedantic",
	],
	deps = [
		":nudny-baseline",
		"@googletest//:gtest_main",
		"@nlohmann_json//:json",
	],
)

cc_binary(
	name = "app",
	srcs = [ "src/main.cpp"	],
	deps = [ 
		":nudny-baseline",
		"@nlohmann_json//:json"
	],
)
