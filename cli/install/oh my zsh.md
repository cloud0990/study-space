`zsh 설치`
```shell
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
$ apt install zsh
```
---
`oh my zsh 설치`
```shell
# https://github.com/ohmyzsh/ohmyzsh/wiki
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
---
`설치 후, .zshrc 수정`
```shell
$ vim ~/.zshrc
  #or
$ code ~/.zshrc # vscode로 수정

ZSH_THEME="적용할 테마"
```
---
`수정 후, zsh 재실행`
```shell
$ exec zsh
```
---
`oh my zsh 제거`
```shell
$ sudo chmod 777 ~/.oh-my-zsh/tools/uninstall.sh
$ ~/.oh-my-zsh/tools/uninstall.sh
```