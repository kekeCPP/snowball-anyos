# HOW TO RUN

This is an exlpenation of how to run this sample project

## Prerequisites
- Virtualbox
- Docker

For windows:
- Git bash
- Add virtualbox installation folder to system path

## Commands
From snowball directory run:
```yaml
./scripts/run.sh
```

For manual execution:
```yaml
docker build --build-arg UID=$(id -u) -t snowball-image .

docker run -v /$(pwd)/vm:/root/VirtualBox\ VMs snowball-image

vboxmanage registervm /$(pwd)/vm/alpine2/alpine2.vbox
```

To uninstall vm run this from snowball directory:
```yaml
./scripts/uninstall.sh
```

### Authors
- Hampus Grimskär
- Max Dahlgren
- Zulius Roolf
- Said Nodir Tahirshah