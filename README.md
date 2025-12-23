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
Execute gen.sh via bash:
```bash
cat gen.sh | bash -s
```

Or provide input to gen.sh directly:
```bash
./gen.sh <<'EOF'
echo "Commands here"
EOF
```

## Description

The `gen.sh` script reads commands from stdin and outputs them. It can be used interactively or with piped input.

To execute the commands, pipe the output to bash:
```bash
echo "echo 'Hello World'" | ./gen.sh | bash
```

This is useful for:
- Verifying commands before execution
- Building script pipelines
- Processing command templates
