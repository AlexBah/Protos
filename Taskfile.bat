REM task:
REM     generate:
REM         description: "Generate Go code from proto files"
REM         cmd:
protoc -I proto proto\sso\sso.proto --go_out=gen\go\ --go_opt=paths=source_relative --go-grpc_out=gen\go\ --go-grpc_opt=paths=source_relative

REM         description: "Generate grpc-gateway code from proto files"
REM         cmd:
protoc -I proto proto\sso\sso.proto --grpc-gateway_out=gen\go\ --grpc-gateway_opt=paths=source_relative --grpc-gateway_opt=generate_unbound_methods=true