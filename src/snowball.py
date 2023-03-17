import json
import os
import sys

def main():
    f = open(sys.argv[2])
    data = json.load(f)
    f.close()

    for service in data:
        url = service["url"]
        name = service["service-name"]
        download_command = "/app/scripts/download-image.sh " + url + " " + name
        init_command = "/app/scripts/init-vm.sh " + sys.argv[1] + " " + name
        os.system(download_command)
        os.system(init_command)


main()
