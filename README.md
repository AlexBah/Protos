# Protocol Buffers

# Install Protoc

https://github.com/protocolbuffers/protobuf/releases
unzip
export PATH="$PATH:$HOME/.local/bin"
apt install -y protobuf-compiler

# Install Go librares

go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
export PATH="$PATH:$(go env GOPATH)/bin"

# Install JS librares

https://github.com/protocolbuffers/protobuf-javascript/releases
unzip
--plugin=protoc-gen-js=..\protobuf-javascript-3.21.4-win64\bin\protoc-gen-js.exe

# Generate Go files

protoc -I proto proto\sso\sso.proto --go_out=gen\go\ --go_opt=paths=source_relative --go-grpc_out=gen\go\ --go-grpc_opt=paths=source_relative

# Generate JS files

protoc -I proto proto\sso\sso.proto --js_out=import_style=commonjs,binary:gen\js\ --plugin=protoc-gen-js=..\protobuf-javascript-3.21.4-win64\bin\protoc-gen-js.exe --grpc-web_out=import_style=commonjs,mode=grpcwebtext:gen\js\
