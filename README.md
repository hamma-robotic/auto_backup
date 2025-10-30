# 💾 Auto-Backup Script (`backup.sh`)

A simple, secure shell script designed to perform remote, incremental backups of critical directories (e.g., system logs or configuration files) from a source server to a designated remote host via SSH/rsync.

---

## ⚙️ Prerequisites

To successfully run this script, you must have the following configured:

1.  **Two Linux Servers:** A Source Server (where the script runs) and a Destination Server (the remote host).
2.  **SSH Key-Based Authentication:** The user running the script on the Source Server must have a private key that allows passwordless SSH login to the **root** user on the Destination Server.
3.  **Required Tools:** `rsync` must be installed on both the Source and Destination servers.

---

## 🛠️ Configuration

Before running the script, you must edit the environment variables inside `backup.sh`.

| Variable | Description | Example Value |
| :--- | :--- | :--- |
| `BACKUP_HOST` | The **root** user and IP/hostname of the remote machine where backups are stored. | `"root@192.168.1.50"` |
| `SOURCE_DIR` | The **absolute path** to the local directory you want to back up. | `"/var/log/"` |
| `DEST_DIR` | The absolute path on the remote host where the data will be placed. | `"/backups/module10/"` |
| `LOG_FILE` | The path for the local log file created by the script. | `"./backup.log"` |

---

## 🚀 Usage

### 1. Manual Execution

Run the script directly from your terminal (on the Source Server). Since the script accesses system directories like `/root` and `/var/log`, it must be run with elevated privileges.

```bash
sudo ./backup.sh
