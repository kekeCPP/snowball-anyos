# HOW TO RUN

This is an exlpenation of how to run this sample project

## Prerequisites
- Virtualbox
- Docker

For windows:
- Git bash
- Add virtualbox installation folder to system path

## Clone this repo
```yaml
git clone https://github.com/kekeCPP/snowball-anyos --config core.autocrlf=input
```

## Commands
From snowball directory run:
```yaml
./scripts/run.sh [vm service name]
```

For manual execution:
```yaml
docker build -t snowball-image .

docker run -v /$(pwd)/vm:/root/VirtualBox\ VMs snowball-image $(id -u) ./common-schemas/metadata.json

vboxmanage registervm $(pwd)/vm/[vm service name]/[vm service name].vbox
```

To uninstall vm run this from snowball directory:
```yaml
./scripts/uninstall.sh [vm service name]
```

### Authors
- Hampus Grimskär
- Max Dahlgren
- Zulius Roolf
- Said Nodir Tahirshah