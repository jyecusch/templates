module example

go 1.24.3

// Remove once suga is officially released
replace (
	github.com/nitrictech/suga/client => github.com/nitrictech/suga/client v0.0.0-20250703085005-05e73560d546
	github.com/nitrictech/suga/proto => github.com/nitrictech/suga/proto v0.0.0-20250703085005-05e73560d546
)

require (
	github.com/nitrictech/suga/client v0.0.0-00010101000000-000000000000
	github.com/nitrictech/suga/proto v0.0.0-00010101000000-000000000000
	google.golang.org/grpc v1.73.0
)

require (
	golang.org/x/net v0.38.0 // indirect
	golang.org/x/sys v0.32.0 // indirect
	golang.org/x/text v0.23.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250324211829-b45e905df463 // indirect
	google.golang.org/protobuf v1.36.6 // indirect
)
