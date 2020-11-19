# SRE 筆記 

## SSH 到某台機器的某帳號

- 下載遠端工具（ssh）

> sudo apt install openssh.server

> ssh hostname@X.X.X.X -p 22

- 回傳一個公鑰 /home/hostname/.ssh/known_hosts

> sudo nano /etc/ssh/ssh_config

```
Stricthostkeychecking no
```

- 可不用再回答 yes, no

---

## 產生一組公私鑰

> ssh-keygen -t rsa -P ''

- 查看ssh的目錄

> ls -alh .ssh
```
total 28
drwx------ 2 bigred bigred 4096 Nov 12 07:16 .
drwxr-xr-x 5 bigred bigred 4096 Nov 13 06:42 ..
-rw------- 1 bigred bigred 3226 Nov 12 07:16 authorized_keys
-rw------- 1 bigred bigred 2602 Nov 12 05:59 id_rsa       #私鑰
-rw-r--r-- 1 bigred bigred  567 Nov 12 05:59 id_rsa.pub   #公鑰
-rw-r--r-- 1 bigred bigred 4662 Nov 12 05:45 known_hosts
```
- ip_rsa 私鑰
- ip_rsa.pub 公鑰

> ssh-copy-id hostname@X.X.X.X

- 複製 SSH 公鑰到指定帳號，產生 authorized_keys 檔案

> ssh hostname@X.X.X.X -p 22

- 可以不問密碼，直接登入

## 下載 PUTTYgen

- Type of key to generate: RSA
- Generate 後，產生 public key 跟 private key

> nano ~/.ssh/authorized_keys
- 把 public key 複製到 authorized_keys
- 在 puuty 時，按下SSH -> Auth 點入 夾帶 private key 檔案 Browse...
- 在 puuty 時，Data -> Connection Auto-login username，即可登入就幫你帶入username
- Save之後，登入都即可不用帳號密碼

:warning: 若是HostOnly，要用VMware給你的配發IP，192.168.X.X，前三碼固定，最後一碼自己設定，才可PUTTY進去。

## 輸入hostname即可登入

> sudo nano /etc/hosts

```
X.X.X.X fionn
X.X.X.X frei
X.X.X.X xuan
X.X.X.X sherry
```

> sudo nano /etc/group

```
sudo:x:27:frei,sherry,xuan,fionn
```

> ssh frei

- ssh hostname 即可登入 