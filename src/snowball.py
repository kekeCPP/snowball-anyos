import json
import os
import sys

def main():
    f = open("./common-schemas/metadata.json")
    data = json.load(f)
    f.close()
    url = data[0]["url"]
    name = data[0]["name"]

    download_command = "./scripts/download-image.sh " + url + " " + sys.argv[2]
    init_command = "./scripts/init-vm.sh " + sys.argv[1] + " " + sys.argv[2]

    os.system(download_command)
    os.system(init_command)
    print(sys.argv[1])
    print(sys.argv[2])

main()
