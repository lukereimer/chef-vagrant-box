name "starter"
description "An example Chef role"
run_list "recipe[java]"
override_attributes({
  "java" => {
	"jdk_version" => 7
}
})
