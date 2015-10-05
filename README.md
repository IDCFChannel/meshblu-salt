# Meshblu Salt States

## インストール

root権限で実行します。

git cloneします。

```bash
$ git clone https://github.com/IDCFChannel/meshblu-salt.git
$ cd meshblu-salt
```

設定ファイルを移動します。

```bash
$ mv ./etc/salt /etc/
$ mv ./srv /srv
```

[Salt Bootstrap](https://docs.saltstack.com/en/latest/topics/tutorials/salt_bootstrap.html)からSalt Masterをインストールします。

```bash
$ curl -L https://bootstrap.saltstack.com | sh -s -- -P -M
```

## 使い方

salt-minionの認証

```bash
$ salt-key -A
```

minion1のホストにhighstateする場合

```bash
$ salt 'minion1*' state.highstate
```

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[Masato Shimizu](https://github.com/masato)

