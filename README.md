# dotfiles

MacOSのdotfilesです。　　
Apple SiliconのMacとIntelのMacの両方で動作します。

## 注意事項

- macOS Catalina（10.15）より前のバージョンの場合はMacのデフォルトのシェルは`bash`であるため、デフォルトシェルを`zsh`に変更する。

```
chsh -s /bin/zsh
```

- `Brewfile`には、App Storeからインストールするものも含まれているため、`make`実行前にApple Storeにログインする。
- vscode設定において、`code`コマンドが認識されるようにPATHに`code`コマンドをインストールする必要がある。
`Command + Shift + P`で`Shell Command: Install code command in PATH`を選択して、PATHを通す。
- GitHubのSSH接続で、`github.sh`を実行した時にSSHキーが作成され、クリップボードに保存されるので、それで[SSHキーの登録](https://github.com/settings/ssh/new)をする必要がある。

## その他の手動作業

- Raycastの設定ファイルを取り込む必要がある。`raycast/`に`Raycast.rayconfig`ファイルがあるので、Raycastのimport機能で取り込みが可能。Raycastを起動し、設定ファイルを開く。`Advanced`の項目からImportできる。パスワードはNotionに記載してある。（自分用メモ）
- git設定ファイルは、`~/.config/git/`下に`config`と`ignore`という名前のファイルで`.gitignore_global`と`.gitconfig`の内容を反映させる。
