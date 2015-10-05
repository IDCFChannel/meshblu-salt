# Meshblu Salt States

## インストール

git cloneします。

```bash
$ git clone https://github.com/IDCFChannel/meshblu-salt.git
$ cd meshblu-salt
```

設定ファイルを移動します。

```bash
$ sudo mv ./etc/salt /etc/
$ sudo mv ./srv /srv
```

[Salt Bootstrap](https://docs.saltstack.com/en/latest/topics/tutorials/salt_bootstrap.html)からSalt Masterをインストールします。

```bash
$ curl -L https://bootstrap.saltstack.com | sudo sh -s -- -P -M
```

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[Masato Shimizu](https://github.com/masato)

