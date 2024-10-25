# ZigOps

ZigOps is a unified infrastructure as code and configuration management tool written in Zig with Lua as its configuration language. It provides a seamless integration between infrastructure provisioning and configuration management through a shared state system.

## Features

- **Infrastructure as Code**

  - Declarative infrastructure definitions
  - State management and drift detection
  - Resource dependency resolution
  - Parallel resource provisioning
  - Provider plugin system

- **Configuration Management**

  - System state enforcement
  - File management
  - Service management
  - Package management
  - Custom resource types

- **Shared State System**
  - Common state store for both domains
  - Real-time state synchronization
  - State history and rollback capabilities
  - Export/import functionality

## Requirements

- Zig 0.11.0 or later
- Lua 5.4 or later

## Installation

```bash
git clone https://github.com/yourusername/zigops.git
cd zigops
zig build -Drelease-safe
```

## Quick Start

1. Create a new infrastructure definition:

```lua
-- infrastructure.lua
local infra = require("zigops.infra")

infra.resource("vpc", {
    name = "main-vpc",
    cidr = "10.0.0.0/16"
})
```

2. Define configuration management:

```lua
-- config.lua
local config = require("zigops.config")

config.file("/etc/myapp.conf", {
    content = "port = 8080\nworkers = 4",
    mode = "0644",
    owner = "app",
    group = "app"
})
```

3. Run ZigOps:

```bash
zigops apply infrastructure.lua
zigops apply config.lua
```

## Architecture

ZigOps is built with a modular architecture:

- Core Engine (Zig)
- Provider Plugins (Zig)
- Configuration Language (Lua)
- State Store (Embedded Database)
- API Layer (REST/gRPC)

## Development

### Building from Source

```bash
# Debug build
zig build

# Release build
zig build -Drelease-safe

# Run tests
zig build test
```

### Project Structure

```
zigops/
├── src/
│   ├── main.zig
│   ├── infra/
│   ├── config/
│   └── state/
├── libs/
│   └── lua/
├── tests/
└── examples/
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Roadmap

- [ ] Core engine implementation
- [ ] Basic infrastructure providers
- [ ] Configuration management system
- [ ] Shared state store
- [ ] Plugin system
- [ ] CLI tools
- [ ] Documentation
- [ ] Test coverage
