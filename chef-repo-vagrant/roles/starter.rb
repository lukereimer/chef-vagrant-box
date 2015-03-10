name "starter"
description "An example Chef role"
run_list "recipe[spinen-artifactory]"
override_attributes({
  "java" => {
	"jdk_version" => 7
},
    "artifactory" => {
      "zip_url" => "https://store.artifactoryonline.com/addons/download?license=5bab83cc83bc37e16372a18fa096399b437fbaf5",
      "zip_checksum" => "ffcd9fc728bb2c1aedb9eb81d5fcf11e5961f6feab4a2aa0df7d798a8b4deac9"
}
})
