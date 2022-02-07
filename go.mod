module github.com/mutagen-io/mutagen

go 1.17

require (
	github.com/Microsoft/go-winio v0.5.1
	github.com/bmatcuk/doublestar/v4 v4.0.2
	github.com/docker/docker v20.10.3-0.20211126182219-55da5245ded6+incompatible
	github.com/dustin/go-humanize v1.0.0
	github.com/eknkc/basex v1.0.1
	github.com/fatih/color v1.13.0
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da
	github.com/google/uuid v1.3.0
	github.com/hectane/go-acl v0.0.0-20190604041725-da78bae5fc95
	github.com/mattn/go-isatty v0.0.14
	github.com/mutagen-io/extstat v0.0.0-20210224131814-32fa3f057fa8
	github.com/mutagen-io/fsevents v0.0.0-20180903111129-10556809b434
	github.com/mutagen-io/gopass v0.0.0-20170602182606-9a121bec1ae7
	github.com/spf13/cobra v1.3.0
	github.com/spf13/pflag v1.0.5
	golang.org/x/crypto v0.0.0-20220112180741-5e0467b6c7ce // indirect
	golang.org/x/net v0.0.0-20220111093109-d55c255bac03
	golang.org/x/sys v0.0.0-20220111092808-5a964db01320
	golang.org/x/text v0.3.7
	google.golang.org/grpc v1.43.0
	google.golang.org/grpc/cmd/protoc-gen-go-grpc v1.2.0
	google.golang.org/protobuf v1.27.1
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/apimachinery v0.21.3
)

require (
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/go-cmp v0.5.6 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/mattn/go-colorable v0.1.12 // indirect
	github.com/sirupsen/logrus v1.8.1 // indirect
	golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1 // indirect
	google.golang.org/genproto v0.0.0-20220112215332-a9c7c0acf9f2 // indirect
	gotest.tools/v3 v3.1.0 // indirect
)

replace k8s.io/apimachinery v0.21.3 => github.com/mutagen-io/apimachinery v0.21.3-mutagen1
