cd ../model
go build

# copydep in  "engine"
cd ../engine
./copydep.sh
go build

# copydep in  "api"
cd ../api
./copydep.sh
go build

# copydep in  "api_image"
cd ../api_image
./copydep.sh
cd ./go
go build
