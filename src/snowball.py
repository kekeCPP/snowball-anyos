import json
import os
import sys

def main():
    print(sys.argv[1])

    f = open("./common-schemas/metadata.json")
    data = json.load(f)
    url = data[0]["url"]
    f.close()

    download_command = "./scripts/download-image.sh " + url
    init_command = "./scripts/init-vm.sh " + sys.argv[1]

    os.system(download_command)
    # os.system("../scripts/uninstall.sh")
    os.system(init_command)

main()
