# Setup

### Mirrorlist & Update

```
sudo pacman-mirrors --fasttrack
sudo pacman -Syu
```



### Chinese Input

https://wiki.archlinux.org/title/Fcitx5

* Fcitix5 install

````
sudo pacman -S fcitix5-im fcitx5-chewing
````

*  Modified `/etc/environment`

```
GTK_IM_MODULE=fcitx5
QT_IM_MODULE=fcitx5
XMODIFIERS=@im=fcitx5
```



### Fonts

Consolas NF for powerline character