geth = geth --datadir data
network = --networkid 2018

.PHONY: account init start mine attach clean

account:
	$(geth) account new

init:
	$(geth) init ./config/genesis.json

start:
	$(geth) $(network)

mine:
	$(geth) $(network) --mine --minerthreads 1

attach:
	geth attach data/geth.ipc

clean:
	rm -rf ./data
	mkdir -p ./data