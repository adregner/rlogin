rlogin
======

A ruby ssh login script that supports many wonderful features, such as...

  * SSH bastions (SSH login to one server to use as a proxy to get to your intended server)
  * SSH private keys
  * Fully customizable ssh\_config file.
  * Configurable root access methods

Usage:
------
```
Target server options
  --host HOSTNAME              Hostname or IP address to connect to
  --user USERNAME              Username to log in as
  --port [PORT]                Port number to connect to (default: 22)
  --password [PASSWORD]        Password or SSH key passphrase to authenticate with
  --ssh-key [SSH_KEY_FILE]     SSH private key file to use (use --password to specify a passphrase)
  --root-method [METHOD]       Method to use to gain root access
  --superuser-password [PASSWORD]
                               Root password to use when using "su" root method

SSH Proxy (bastion) options
  --proxy [PROXY_HOSTNAME]     Proxy hostname to login to the server with
  --proxy-port [PROXY_PORT]    Port number to SSH into the proxy server with
  --proxy-user [USERNAME]      Username to SSH into the proxy with
  --proxy-password [PASSWORD]  Password or key passphrase for the proxy server
  --proxy-ssh-key [PROXY_SSH_KEY_FILE]
                               SSH private key to log into the server with

Misc options
  --ssh-config [FILENAME]      Adds the contents of the provided ssh_config file to rlogin's
  master ssh_config file.  You can also edit the master file by hand, it is located in
  ~/.config/rlogin/ssh_config
  --debug                      Echo the entire login sequence, along with what we write to the stream.
  -h, --help                   Show this help message
```
