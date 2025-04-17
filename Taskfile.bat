REM task:
REM     generate:
REM         description: "Generate Go code from proto files"
REM         cmd:
protoc -I proto proto\sso\sso.proto --go_out=gen\go\ --go_opt=paths=source_relative --go-grpc_out=gen\go\ --go-grpc_opt=paths=source_relative

REM         description: "Generate JS code from proto files"
REM         cmd:
protoc -I proto proto\sso\sso.proto --js_out=import_style=commonjs,binary:gen\js\ --plugin=protoc-gen-js=..\protobuf-javascript-3.21.4-win64\bin\protoc-gen-js.exe --grpc-web_out=import_style=commonjs,mode=grpcwebtext:gen\js\
