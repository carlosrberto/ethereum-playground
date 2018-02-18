geth = geth --datadir data
network = --networkid 2018

.PHONY: account init start mine attach contracts clean_data clean_build

account:
	$(geth) account new

init:
	$(geth) init ./config/genesis.json

mine:
	$(geth) $(network) --unlock 0x1a819cf8c813697f8480319e844ebcc272d82592 --password ./password.txt --rpc --rpccorsdomain "*" --mine --minerthreads 1

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