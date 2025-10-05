# verbose-guacamole

A simple bash script generator.

## Usage

### Direct execution
```bash
./gen.sh
```

### With stdin input
```bash
echo "echo 'Hello World'" | ./gen.sh
```

### Using bash -s
```bash
cat gen.sh | bash -s
```

## Description

The `gen.sh` script reads commands from stdin and processes them. It can be used interactively or with piped input.