# Kill Process by Port Script

This is a simple shell script to automatically find and terminate a process running on a specified port. It streamlines the process of killing ports manually using `lsof` and `kill` commands.

## Features
- Find the process running on a specific port.
- Terminate the process using a single command.
- Simple and easy-to-use script.

## Prerequisites
Ensure `lsof` is installed on your system. You can check by running:
```bash
lsof -v
```
If it's not installed, you can install it:
- For Debian/Ubuntu:
  ```bash
  sudo apt-get install lsof
  ```
- For CentOS/RHEL:
  ```bash
  sudo yum install lsof
  ```
- For macOS:
  ```bash
  brew install lsof
  ```

## Installation
1. Clone the repository or copy the script file `kill_port.sh` to your desired location.
2. Make the script executable:
   ```bash
   chmod +x kill_port.sh
   ```

## Usage
Run the script with the port number as an argument:
```bash
./kill_port.sh <port_number>
```
Example:
```bash
./kill_port.sh 3300
```

### Output
- If a process is running on the specified port, it will be terminated, and you will see a success message:
  ```plaintext
  Successfully killed process <PID> on port <port_number>.
  ```
- If no process is using the port, the script will inform you:
  ```plaintext
  No process is using port <port_number>.
  ```

## Contributing
Feel free to fork this repository and submit pull requests for improvements or additional features.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

