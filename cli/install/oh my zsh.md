zsh 설치
```bash
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

$ apt install zsh
```

<br>

oh my zsh 설치
```bash
# https://github.com/ohmyzsh/ohmyzsh/wiki

$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

<br>

설치 후, .zshrc 수정
```bash
$ vim ~/.zshrc
  #or
$ code ~/.zshrc # vscode로 수정

ZSH_THEME="적용할 테마"
```

<br>

수정 후, zsh 재실행
```bash
$ exec zsh
```

<br>

oh my zsh 제거
```bash
$ sudo chmod 777 ~/.oh-my-zsh/tools/uninstall.sh
$ ~/.oh-my-zsh/tools/uninstall.sh
```