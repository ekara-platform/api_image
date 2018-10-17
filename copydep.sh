echo "API_IMAGE copydep..."

# Refresh "model"
mkdir ./go/vendor/github.com/ekara-platform/model/

rm -rf ./go/vendor/github.com/ekara-platform/model/*.go
cp ../model/*.go  ./go/vendor/github.com/ekara-platform/model/


# Refresh "engine"
mkdir ./go/vendor/github.com/ekara-platform/engine/

rm -rf ./go/vendor/github.com/ekara-platform/engine/*.go
cp ../engine/*.go  ./go/vendor/github.com/ekara-platform/engine/

rm -rf ./go/vendor/github.com/ekara-platform/engine/ssh/*.go
mkdir ./go/vendor/github.com/ekara-platform/engine/ssh/
cp ../engine/ssh/*.go  ./go/vendor/github.com/ekara-platform/engine/ssh/

rm -rf ./go/vendor/github.com/ekara-platform/engine/ansible/*.go
mkdir ./go/vendor/github.com/ekara-platform/engine/ansible/
cp ../engine/ansible/*.go  ./go/vendor/github.com/ekara-platform/engine/ansible/

rm -rf ./go/vendor/github.com/ekara-platform/engine/component/*.go
mkdir ./go/vendor/github.com/ekara-platform/engine/component/
cp ../engine/component/*.go  ./go/vendor/github.com/ekara-platform/engine/component/

rm -rf ./go/vendor/github.com/ekara-platform/engine/util/*.go
mkdir ./go/vendor/github.com/ekara-platform/engine/util/
cp ../engine/util/*.go  ./go/vendor/github.com/ekara-platform/engine/util/


# Refresh "api"
mkdir ./go/vendor/github.com/ekara-platform/api/
rm -rf ./go/vendor/github.com/ekara-platform/api/*.go
cp ../api/*.go  ./go/vendor/github.com/ekara-platform/api/

rm -rf ./go/vendor/github.com/ekara-platform/api/consul/*.go
mkdir ./go/vendor/github.com/ekara-platform/api/consul/
cp ../api/consul/*.go  ./go/vendor/github.com/ekara-platform/api/consul/

rm -rf ./go/vendor/github.com/ekara-platform/api/docker/*.go
mkdir ./go/vendor/github.com/ekara-platform/api/docker/
cp ../api/docker/*.go  ./go/vendor/github.com/ekara-platform/api/docker/



cd ./go
go build
