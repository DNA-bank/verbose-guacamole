# verbose-guacamole

A simple bash script generator that processes commands from stdin and outputs them. Perfect for script generation, command logging, and automation workflows.

## Features

- 📝 Interactive mode for manual input
- 📄 Stdin piping support for automated workflows
- 🔄 Real-time command processing
- 🚀 Lightweight and dependency-free
- 💻 Cross-platform compatible (Linux, macOS, WSL)

## Requirements

- Bash 3.0 or higher (pre-installed on most Unix-like systems)
- Basic understanding of shell scripting

## Usage

### Direct execution
Run the script interactively and enter commands manually:
```bash
./gen.sh
# Enter your commands, press Ctrl+D when finished
```

### With stdin input
Pipe commands directly from echo or other sources:
```bash
echo "echo 'Hello World'" | ./gen.sh
```

### Using bash -s
Execute the script using bash's stdin mode:
```bash
cat gen.sh | bash -s
```

### Reading from a file
Process multiple commands from a file:
```bash
cat commands.txt | ./gen.sh
```

## Practical Examples

### Example 1: Generate a deployment script
```bash
cat << EOF | ./gen.sh
echo "Starting deployment..."
git pull origin main
npm install
npm run build
pm2 restart app
echo "Deployment complete!"
EOF
```

### Example 2: Create a backup automation
```bash
echo "tar -czf backup-\$(date +%Y%m%d).tar.gz /important/data" | ./gen.sh
```

### Example 3: Log command execution
```bash
./gen.sh <<< "echo \$(date): System check performed >> /var/log/checks.log"
```

## Use Cases

- **Script Generation**: Quickly generate bash scripts from templates
- **Command Logging**: Track and document executed commands
- **Automation Workflows**: Chain with other tools in CI/CD pipelines
- **Teaching Tool**: Demonstrate bash scripting concepts interactively
- **Command Testing**: Preview commands before execution

## Tips & Best Practices

1. **Use heredocs** for multi-line input:
   ```bash
   ./gen.sh << 'SCRIPT'
   #!/bin/bash
   echo "Multi-line script"
   SCRIPT
   ```

2. **Combine with other tools**: Pipe output to files or other commands
   ```bash
   ./gen.sh < input.txt > output.sh
   chmod +x output.sh
   ```

3. **Validate output**: Always review generated scripts before execution
   ```bash
   ./gen.sh < commands.txt | tee script.sh
   ```

## Troubleshooting

### Permission denied
If you get a permission denied error:
```bash
chmod +x gen.sh
```

### Script not found
Ensure you're in the correct directory or use the full path:
```bash
/path/to/gen.sh
```

### No output appearing
Make sure to press `Ctrl+D` to finish input in interactive mode.

## Contributing

Contributions are welcome! Feel free to:
- Report bugs or issues
- Suggest new features
- Submit pull requests
- Improve documentation

## License

This project is released under the CC0 1.0 Universal license. See [LICENSE](LICENSE) for details.

## Description

The `gen.sh` script reads commands from stdin and processes them. It can be used interactively or with piped input, making it a versatile tool for various automation and scripting scenarios.