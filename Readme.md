# 📁 sambagk - Samba Server Management Tool

`sambagk` is a simple Bash-based tool for managing the Samba server via a terminal menu interface on Ubuntu systems. It provides options to start, stop, enable, disable, check the status of the Samba server, and edit the Samba configuration file.

---

## 🚀 Features

- Start the Samba server
- Stop the Samba server
- Enable the Samba server to start on boot
- Disable the Samba server from starting on boot
- Check the status of the Samba server
- Edit Samba configuration (`smb.conf`) using `nano`
- Simple installation and uninstallation scripts

---

## 📥 Installation

1. **Download the scripts**:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. **Make the scripts executable**:
   ```bash
   chmod +x sambagk install_sambagk.sh uninstall_sambagk.sh
   ```

3. **Run the installation script**:
   ```bash
   ./install_sambagk.sh
   ```

The installation script will:
- Copy `sambagk` to `/usr/local/bin/` for global access.
- Ensure `samba` and `nano` are installed.

---

## ⚡ Usage

After installation, simply run in Terminal:
```bash
sambagk
```

### 📝 Menu Options:
1. Start Samba server
2. Stop Samba server
3. Enable Samba server (auto-start on boot)
4. Disable Samba server
5. Show Samba server status
6. Edit Samba configuration (`/etc/samba/smb.conf`)
7. Exit

---

## 🧹 Uninstallation

To remove `sambagk` from your system:

```bash
./uninstall_sambagk.sh
```

The uninstallation script will:
- Remove `sambagk` from `/usr/local/bin/`
- Optionally ask to remove Samba from the system

---

## 💡 Notes
- The script uses `systemctl` to manage the Samba service (`smbd`).
- Editing the Samba configuration (`smb.conf`) requires `sudo` permissions.
- Ensure Samba shares are properly configured after editing the configuration file.

---

## 💬 Support
If you encounter issues or have suggestions, feel free to open an issue or submit a pull request.

---

## 🛡️ License
MIT License. See `LICENSE` file for details.

---

## 🏗️ Contribution
Contributions are welcome! Please:
- Fork the repository
- Create a feature branch
- Commit changes
- Submit a pull request

---

Enjoy managing your Samba server with ease! 🎉

