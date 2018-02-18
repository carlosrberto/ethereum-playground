geth = geth --datadir data

.PHONY: account init start mine attach contracts clean_data clean_build

account:
	$(geth) account new

init:
	$(geth) init ./config/genesis.json

mine:
	$(geth) --networkid 2018 --unlock 0x1a819cf8c813697f8480319e844ebcc272d82592 --password ./config/password.txt --rpc --rpccorsdomain "*" --mine --minerthreads 1

attach:
	geth attach data/geth.ipc

contracts:
	solc -o build/contracts --bin --abi --overwrite src/contracts/*.sol

clean_data:
	rm -rf ./data
	mkdir -p ./data

clean_build:
	rm -rf ./build
	mkdir -p ./build