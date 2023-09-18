az group create -l eastus -n "nguyenbason_rg_0710"
az webapp up --sku F1 -l eastus2 -g "nguyenbason_rg_0710" -n "helloflasknbson"