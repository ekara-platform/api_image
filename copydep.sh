# Refresh "model"
#rm -rf ./go/vendor/github.com/lagoon-platform/model/*.go
#cp ../model/*.go  ./go/vendor/github.com/lagoon-platform/model/


# Refresh "engine"
rm -rf ./go/vendor/github.com/lagoon-platform/engine/*.go
cp ../engine/*.go  ./go/vendor/github.com/lagoon-platform/engine/
rm -rf ./go/vendor/github.com/lagoon-platform/engine/ssh/*.go
cp ../engine/ssh/*.go  ./go/vendor/github.com/lagoon-platform/engine/ssh

# Refresh "api"
rm -rf ./go/vendor/github.com/lagoon-platform/api/*.go
cp ../api/*.go  ./go/vendor/github.com/lagoon-platform/api/
rm -rf ./go/vendor/github.com/lagoon-platform/api/consul/*.go
cp ../api/consul/*.go  ./go/vendor/github.com/lagoon-platform/api/consul


