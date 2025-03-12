# Seed SSH Key 🔑🚀
[![GitHub Sponsors](https://img.shields.io/badge/Sponsor-GitHub%20Sponsors-blue?logo=github)](https://github.com/sponsors/kevinveenbirkenbach) [![Patreon](https://img.shields.io/badge/Support-Patreon-orange?logo=patreon)](https://www.patreon.com/c/kevinveenbirkenbach) [![Buy Me a Coffee](https://img.shields.io/badge/Buy%20me%20a%20Coffee-Funding-yellow?logo=buymeacoffee)](https://buymeacoffee.com/kevinveenbirkenbach) [![PayPal](https://img.shields.io/badge/Donate-PayPal-blue?logo=paypal)](https://s.veen.world/paypaldonate)


[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE) [![Bash Version](https://img.shields.io/badge/Bash-4.x+-blue.svg)](https://www.gnu.org/software/bash/)

**Seed SSH Key** is a simple Bash script that generates a new RSA SSH key, copies it to a target host, and reminds you to remove any unauthorized keys. Perfect for quickly setting up secure SSH access to remote servers.

## ✨ Features

- **Generate RSA Key:** Creates a new 4096-bit RSA key with a custom comment and timestamped filename.
- **SSH Key Seeding:** Automatically seeds the generated public key to your target host using `ssh-copy-id`.
- **Security Reminders:** Provides guidance on how to manage and remove unauthorized keys.

## 🚀 Installation

Install **Seed SSH Key** using [Kevin's Package Manager](https://github.com/kevinveenbirkenbach/package-manager):

```bash
pkgmgr install seedssh
```

This command installs the script under the alias **seedssh**.

## ⚙️ Usage

Run the script from your terminal by specifying the target host:

```bash
seedssh <target_host>
```

For example:

```bash
seedssh example.com
```

### How It Works

1. **Key Generation:** The script generates a new RSA key (4096-bit) and saves it to your `~/.ssh` directory with a timestamped filename.
2. **Key Seeding:** It automatically uses `ssh-copy-id` to copy the public key to the specified target host.
3. **Security Notice:** The script reminds you to remove any unauthorized keys and provides an example command for managing your `authorized_keys`.

## 📜 License

This project is licensed under the [MIT License](./LICENSE).

## 👨‍💻 Author

**Kevin Veen-Birkenbach**  
- 📧 [kevin@veen.world](mailto:kevin@veen.world)  
- 🌐 [https://www.veen.world/](https://www.veen.world/)

---

Happy seeding! 🌱🔑
