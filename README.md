# Useradd 少 `-m` 探討

> /bin/bash user02

    - 少了 –m, 若帳號尚未有資料, 可用 userdel 先刪除, 再重建.

> sudo userdel –r 帳號

- 若已有資料

> sudo mkdir  /home/帳號

> sudo passwd  帳號

> sudo chown –R 帳號:帳號  /home/帳號

> sudo usermod -aG sudo 帳號

#  解決少 `-m` 步驟

- 開啟 VMware workstation player

- [Network Adapter][Network connection]確認到[Bridged] 

      - login: bigred

- 查看 /home

> ls -alh /home

```
total 12K
drwxr-xr-x  3 root   root   4.0K Oct 27 12:35 .
drwxr-xr-x 21 root   root   4.0K Oct  9 06:27 ..
drwxr-xr-x  4 bigred bigred 4.0K Oct 27 12:31 bigred
```

- 建立 user02 帳號 (少-m 參數)

> sudo useradd -s /bin/bash user02
 
- 查看 /home 下 目錄 (是否有 user02 目錄)

> ls –alh /home 

```
total 12K
drwxr-xr-x  3 root   root   4.0K Oct 27 12:35 .
drwxr-xr-x 21 root   root   4.0K Oct  9 06:27 ..
drwxr-xr-x  4 bigred bigred 4.0K Oct 27 12:31 bigred
```

- 查看 /etc/ 下的 passwd ；grooup；shadow；gshadow 檔後 3 列


> cat /etc/passwd |tail -n 3

```
bigred:x:1000:1000:bigred:/home/bigred:/bin/bash
lxd:x:998:100::/var/snap/lxd/common/lxd:/bin/false
user02:x:1035:1035::/home/user02:/bin/bash
```

> cat /etc/group |tail -n 3

```
systemd-coredump:x:999:
bigred:x:1000:
user02:x:1035:
```

> cat /etc/shadow |tail -n 3

```
cat: /etc/shadow: Permission denied
```

> sudo cat /etc/shadow |tail -n 3

```
bigred:$6$0d20Bf5PJEwgGSnj$sn5uoiLrFtU86APh2yM4T7ykxQjsRMXy30dI1JC2bUNZJX1.ov5r3QCETrSkMXXQpCu33XZDLPnmfL1Opp51N/:18538:0:99999:7:::
lxd:!:18538::::::
user02:!:18562:0:99999:7:::
```

> sudo cat /etc/gshadow |tail -n 3

```
systemd-coredump:!!::
bigred:!::
user02:!::
```

- exit 脫離(VMware workstation player 相當logout), putty 會關閉

- 用 user02 沒密碼無法 login

- 再用bigred 登入

- 給 user02 帳號密碼 user02；

      - login: bigred

> sudo passwd user02

```
[sudo] password for bigred:
New password:
Retype new password:
passwd: password updated successfully
```

- 查看 /etc/ 下的 passwd ；grooup；shadow；gshadow 檔後3列

      - login: bigred

> cat /etc/passwd |tail -n 3

```
bigred:x:1000:1000:bigred:/home/bigred:/bin/bash
lxd:x:998:100::/var/snap/lxd/common/lxd:/bin/false
user02:x:1035:1035::/home/user02:/bin/bash
```

> cat /etc/group |tail -n 3

```
systemd-coredump:x:999:
bigred:x:1000:
user02:x:1035:
```

bigred@us2004:~$ sudo cat /etc/shadow |tail -n 3
bigred:$6$0d20Bf5PJEwgGSnj$sn5uoiLrFtU86APh2yM4T7ykxQjsRMXy30dI1JC2bUNZJX1.ov5r3QCETrSkMXXQpCu33XZDLPnmfL1Opp51N/:18538:0:99999:7:::
lxd:!:18538::::::
user02:$6$C22HBfsM6OW7MSPa$Ig/CIQ/.V7pS.4W7jiLSHjYAZL5Jqtx6RyQ9zIPsN8dzbz3smpbjYFEaQXOGQtR/ziNwmQkEJ16110EjLpc4E0:18562:0:99999:7:::
bigred@us2004:~$ sudo cat /etc/gshadow |tail -n 3
systemd-coredump:!!::
bigred:!::
user02:!::
 
 12.exit脫離(VMware workstation player 相當logout)
putty 會關閉
13.用帳號user02 密碼user02 login；.查看家目錄
Could not chdir to home directory /home/user02: No such file or directory
user02@us2004:/$
user02@us2004:/$ cd
-bash: cd: /home/user02: No such file or directory
user02@us2004:/$ cd ~
-bash: cd: /home/user02: No such file or directory


14.exit脫離(VMware workstation player 相當logout)
putty 會關閉
 
15. 用bigred 登入
建立 /home/user02目錄
bigred@us2004:~$ mkdir /home/user02
mkdir: cannot create directory ‘/home/user02’: Permission denied
bigred@us2004:~$ sudo mkdir /home/user02
[sudo] password for bigred:


16.查看 /etc/ 下的 passwd ；grooup；shadow；gshadow檔
後3列
bigred@us2004:~$ cat /etc/passwd |tail -n 3
bigred:x:1000:1000:bigred:/home/bigred:/bin/bash
lxd:x:998:100::/var/snap/lxd/common/lxd:/bin/false
user02:x:1035:1035::/home/user02:/bin/bash
bigred@us2004:~$ cat /etc/group |tail -n 3
systemd-coredump:x:999:
bigred:x:1000:
user02:x:1035:

bigred@us2004:~$ sudo cat /etc/shadow |tail -n 3
[sudo] password for bigred:
bigred:$6$0d20Bf5PJEwgGSnj$sn5uoiLrFtU86APh2yM4T7ykxQjsRMXy30dI1JC2bUNZJX1.ov5r3QCETrSkMXXQpCu33XZDLPnmfL1Opp51N/:18538:0:99999:7:::
lxd:!:18538::::::
user02:$6$C22HBfsM6OW7MSPa$Ig/CIQ/.V7pS.4W7jiLSHjYAZL5Jqtx6RyQ9zIPsN8dzbz3smpbjYFEaQXOGQtR/ziNwmQkEJ16110EjLpc4E0:18562:0:99999:7:::
bigred@us2004:~$ sudo cat /etc/gshadow |tail -n 3
systemd-coredump:!!::
bigred:!::
user02:!::
 
17.查看 /home 下 目錄
User02 的Owner及 group 皆為 root
bigred@us2004:~$ ls -ahl /home
total 16K
drwxr-xr-x  4 root   root   4.0K Oct 27 13:54 .
drwxr-xr-x 21 root   root   4.0K Oct  9 06:27 ..
drwxr-xr-x  4 bigred bigred 4.0K Oct 27 12:31 bigred
drwxr-xr-x  2 root   root   4.0K Oct 27 13:54 user02
 其他人 沒有寫的權限

## 創建新文件或目錄時，Linux自動分配初始權限

![mkdir]()

18.exit脫離(VMware workstation player 相當logout)
putty 會關閉
19.用帳號user02 密碼user02 login；.查看家目錄
login as: user02
user02@192.168.1.116's password:
user02@us2004:~$ cd ~
user02@us2004:~$ cd
user02@us2004:~$ pwd
/home/user02
user02@us2004:~$ mkdir test
mkdir: cannot create directory ‘test’: Permission denied
user02@us2004:~$ sudo mkdir test
[sudo] password for user02:
user02 is not in the sudoers file.  This incident will be reported.
user02@us2004:~$ echo 1111 > test
-bash: test: Permission denied


20.exit脫離(VMware workstation player 相當logout)
putty 會關閉
 21.用bigred 登入；查看 /home 目錄
User02 帳號擁有者及群組 設為user02
 login as: bigred
bigred@192.168.1.116's password:
 
bigred@us2004:~$ sudo chown -v user02:user02 /home/user02
changed ownership of '/home/user02' from root:root to user02:user02
bigred@us2004:~$ ls  -alh /home
total 16K
drwxr-xr-x  4 root   root   4.0K Oct 27 13:54 .
drwxr-xr-x 21 root   root   4.0K Oct  9 06:27 ..
drwxr-xr-x  4 bigred bigred 4.0K Oct 27 12:31 bigred
drwxr-xr-x  2 user02 user02 4.0K Oct 27 13:54 user02
 

22.exit脫離(VMware workstation player 相當logout)
putty 會關閉
23.用帳號user02 密碼user02 login；
login as: user02
user02@192.168.1.116's password:
user02@us2004:~$ mkdir test
user02@us2004:~$ echo 111 > test1
user02@us2004:~$ ls -ahl
total 20K
drwxr-xr-x 4 user02 user02 4.0K Oct 27 15:53 .
drwxr-xr-x 4 root   root   4.0K Oct 27 13:54 ..
drwx------ 2 user02 user02 4.0K Oct 27 15:51 .cache
drwxrwxr-x 2 user02 user02 4.0K Oct 27 15:53 test
-rw-rw-r-- 1 user02 user02    4 Oct 27 15:53 test1


user02@us2004:~$ rm -r test
user02@us2004:~$ rm test1
 user02@us2004:~$ ls -alh
total 12K
drwxr-xr-x 3 user02 user02 4.0K Oct 27 16:03 .
drwxr-xr-x 4 root   root   4.0K Oct 27 13:54 ..
drwx------ 2 user02 user02 4.0K Oct 27 15:51 .cache
 
user02@us2004:~$ sudo cat /etc/shadow
[sudo] password for user02:
user02 is not in the sudoers file.  This incident will be reported.
 
User02 沒有sudo 權限


24.exit脫離(VMware workstation player 相當logout)
putty 會關閉
 
25.用bigred 登入
 
login as: bigred
bigred@192.168.1.116's password:
User02 加上sudo 權限
 
bigred@us2004:~$ sudo usermod -aG sudo user02
[sudo] password for bigred:
 
bigred@us2004:~$ cat /etc/group |grep sudo
sudo:x:27:bigred,user02
 
26.exit脫離(VMware workstation player 相當logout)
putty 會關閉
27.用帳號user02 密碼user02 login；
login as: user02
user02@192.168.1.116's password:
user02@us2004:~$ sudo cat /etc/shadow | tail -n 3
bigred:$6$0d20Bf5PJEwgGSnj$sn5uoiLrFtU86APh2yM4T7ykxQjsRMXy30dI1JC2bUNZJX1.ov5r3QCETrSkMXXQpCu33XZDLPnmfL1Opp51N/:18538:0:99999:7:::
lxd:!:18538::::::
user02:$6$C22HBfsM6OW7MSPa$Ig/CIQ/.V7pS.4W7jiLSHjYAZL5Jqtx6RyQ9zIPsN8dzbz3smpbjYFEaQXOGQtR/ziNwmQkEJ16110EjLpc4E0:18562:0:99999:7:::
/etc/shadow 需要sudo權限

sudo useradd -s /bin/bash user02
少了 –m
若帳號尚未有資料
可用 userdel 先刪除。再重建
sudo userdel –r 帳號
若已有資料
sudo mkdir  /home/帳號
sudo passwd  帳號
sudo chown –R 帳號:帳號  /home/帳號
sudo usermod -aG sudo 帳號













