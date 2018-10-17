# copydep in  "api"
cd ../api
./copydep.sh
go build

# copydep in  "api_image"
cd ../api_image
./copydep.sh
cd ./go
go build
