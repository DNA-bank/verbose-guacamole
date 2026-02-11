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

### Using bash to execute commands
Pipe gen.sh output to bash for execution:
```bash
echo "echo 'Hello World'" | ./gen.sh | bash
```

You can also use `bash -s` (which reads from stdin):
```bash
echo "date" | ./gen.sh | bash -s
```

Provide input using a heredoc:
```bash
./gen.sh <<'EOF'
echo "Hello from heredoc"
date
whoami
EOF
```

## Description

The `gen.sh` script reads commands from stdin and echoes them to stdout. It can be used interactively or with piped input.

To execute the commands, pipe the output to bash:
```bash
echo "echo 'Hello World'" | ./gen.sh | bash
```

This is useful for:
- Verifying commands before execution
- Building script pipelines
- Processing command templates
