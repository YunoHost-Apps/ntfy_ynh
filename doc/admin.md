### Configuration

By default, only user selected at installation can read from and write to topics. To change this refer to the upstream project's documentation: https://docs.ntfy.sh/config/#access-control

The configuration file is located at `__INSTALL_DIR__/server.yml` and can be edited directly.

To configure users, tokens, acls and tiers, you'll find a small wrapper script at `__INSTALL_DIR__/ntfy.sh`.

```sh
sudo ~__APP__/ntfy.sh user add your_new_username
```

for example will add a new user.