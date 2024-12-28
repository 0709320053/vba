## Bandit
The Bandit wargame is aimed at absolute beginners. It will teach the basics needed to be able to play other wargames.
> Bandit主机和端口 bandit.labs.overthewire.org:2220
Bandit 用户名:Bandit+数字
第0关帐密都是bandit0
本关得到下一关密码,也就是说本关密码是在上一关找到的
The password is stored in /etc/bandit_pass

### 第零关 bandit0/bandit0
```text
ssh bandit0@bandit.labs.overthewire.org -p 2220 # 考查ssh连接命令`
ls;cat readme # 侦察基础
```
### 第一关 bandit1/ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```text
cat ./- # 文件名是特殊字符
```
### 第二关 bandit2/263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```text
cat spaces\ in\ this\ filename # 文件名有space
```
### 第三关 bandit3/MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```text
cat ...Hiding-From-You # 隐藏文件
```
### 第四关 bandit4/2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```text
file ./* # file 查看文件属性
cat ./-file07
```
### 第五关 bandit5/4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```text
find ./ -size 1033c # -size 1033c 
```
### 第六关 bandit6/HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```text
find / -size 33c -group bandit6 2> /dev/null # -group
cat /var/lib/dpkg/info/bandit7.password
```
### 第七关 bandit7/morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```text
grep  'millionth' data.txt # grep
```
### 第八关 bandit8/dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```text
sort data.txt | uniq -u # 先排序在uniq -u
```
### 第九关 bandit9/4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
```text
strings data.txt # strings
strings data.txt | grep '^[=*]'
```
### 第十关 bandit10/FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
```text
base64 -d data.txt # base64解码
```
### 第十一关 bandit11/dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```text
cat data.txt| tr '[a-m][n-z]' '[n-z][a-m]'|tr '[A-M][N-Z]' '[N-Z][A-M]' # tr 单引号可有可无
```
### 第十二关 bandit12/7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed 这句话有水平！
```text
file # file 能看到文件是被何种压缩,另外也可xxd头部判断
tar xvf # 解压
bzip2 -d # 解压
gzip -d # 解压
```
### 第十三关 bandit13/FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```text
ssh bandit14@localhost -i sshkey.private -p 2221 cat /etc/bandit_pass/bandit14 # ssh -i 参数 -p 2220 一定要加.后面接命令以空格分开。
nc localhost 30000 # nc 使用
```
### 第十四关 bandit14/MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
```text
这一关密码是用来做跳板用，本关不能登陆
```
### 第十五关 bandit15/8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```text
openssl s_client -connect localhost:30001 # another way to nc,使用加密方法连接端口
```
### 第十六关 bandit16/kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
```text
nmap localhost -p 31000-32000 or
namp -sV -T4 -p 31000-32000 localhost
openssl s_client -quiet -connect localhost:31790 # quiet必须加,openssl 只支持短-，没不--
mktemp -d;touch file;chmod 600 file # 一定要chmod，否则连不上.
ssh -i /tmp/tmp.10Jx4dKkJT/key bandit17@localhost -p 2220 cat /etc/bandit_pass/bandit17
```
### 第十七关 badnit17/EReVavePLFHtFlFsjn3hyzMlvSuSAcRD
```text
diff passwords.old passwords.new
```
### 第十八关 bandit18/x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
```text
ssh bandit18@bandit.labs.overthewire.org -p 2220 cat /home/bandit18/readme
```
### 第十九关 bandit19/cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
```text
./bandit20-do cat /etc/bandit_pass/bandit20
```
### 第二十关 badnit20/0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
```text
nc -l 1324 < /etc/bandit_pass/bandit20& # nc -l listen on port as server use
./suconnect 1324
```
### 第二十一关 bandit21/EeoULMCra2q0dSkYj561DX7s1CpBuOBt
```text
ls /etc/cron.d
cat /etc/cron.d/cronjob_bandit22
cat /usr/bin/cronjob_bandit22.sh
cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
```
### 第二十二关 bandit22/tRae0UfB9v0UzbCdn9cY0gQnds9GF58Q
```text
ls /etc/cron.d
cat /etc/cron.d/cronjob_bandit23
cat /usr/bin/cronjob_bandit23.sh
echo I am user bandit23 | md5sum | cut -d ' ' -f 1
cat /tmp/8ca319486bfbbc3663ea0fbe81326349
```
### 第二十三关 badnit23/0Zf11ioIjMVN551jX3CmStKLYqjk54Ga
```text
cat /etc/cron.d/cronjob_bandit24
cat /usr/bin/cronjob_bandit24.sh
mktemp -d
vim /var/spool/bandit24/foo/test
```
- Script
```sh
#!/bin/bash
cat /etc/bandit_pass/bandit24 > /tmp/tmp.9nJpsgKa2t/passwordbandit24
exit 0
```
```test
chmod 777 /tmp/
chmod 777 /var/spool/bandit24/foo/test
cat /temp/tmp.R1kG8QBlfr/passwordbandit24
```
### 第二十四关 badnit24/gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8
```text
mktemp -d # 创建写脚本的地方
脚本生成密码本，直接丢到nc就可以了
```
- 脚本
```sh
# 可以发现我并没有从0000-9999生成密码而是从1000-9999。因为老老实实地作脚本相对比较复杂,分析了一下1000-9999的数字占0000-9999的比率高，脚本也好写!
#!/bin/bash
declare -i x
for ((x=1000;x<10000;x=x+1))
do
	echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $x" >> ./test
done
exit 0
```
### 第二十五关 bandit25/iCi86ttT4KSNe1armKiwbQNmB3YJP3q4
```text
more # more的罕见用法
v
:set shell=/bin/bash
:shell
```
### 第二十六关 bandit26/s0773xxkk0MXfdqOfPRVr9L3jJBUOgCZ
```text
# 由于26关默认shell被替换,所以不能用密码登陆，要在25关登陆
./bandit27-do cat /etc/bandit_pass/bandit27
```
### 第二十七关 bandit27/upsNCc7vzaRDx6oZC6GiR6ERwe1MowGB
```text
git clone ssh://bandit27-git@localhost:2220/home/bandit27-git/repo # 注意port
```
### 第二十八关 bandit28/Yz9IpL0sBcCeuG7m9uQFt8ZNpS4HZRcN
```text
git clone ssh://bandit28-git@localhost:2220/home/bandit28-git/repo
cat README.md
git log # 考察git log
git checkout 3621de89d8eac9d3b64302bfb2dc67e9a566decd # 考察git checkout
cat README.md
``` 
### 第二十九关 bandit29/4pT1t5DENaYuqnqvadYs1oE4QLCdjmJ7
```text
git branch -a
git checkout 
git checkout remotes/origin/dev # 考察切换分支
```
### 第三十关 brandit30/qp30ex3VLz5MDG1n91YowTv4Q8l7CDZL
```
git tag # 考察tag
git show secret
```
### 第三十一关 bandit31/fb5S2xb7bRyFmAvQYQGEqsbhVyJqhnDy
```text
git add -f README.md # 考察如何提交
git commit -m 'hello'
git push
```
### 第三十二关 bandit32/3O9RfhqyAlVBEZpVb6LYStshZoqoSx5K
```text
$0
cd /bin
bash 
```
### 第三十三关 bandit33/tQdtbs5D5i2vJwkO8mEyYEyTL8izoeJ0
END
-----------------------------------------------

## NATAS
Natas teaches the basics of serverside web-security.
### 第一关 natas0/
http://natas11.natas.labs.overthewire.org
/etc/natas_webpass/
tas0（查看返回的源代码，密码被标签<!-- -->注释掉了）
gtVrDuiDfck831PqWsLEZy5gyDz1clto
natas1(右键不能直接查看代码，f12进入开发环境，doc-->response )
ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi
natas2
ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi
natas3
sJIJNW6ucpu6HPZ1ZAchaDtwd7oGrD14
natas4
Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ
natas5(curl -H "referer:http://natas5.natas.labs.overthewire.org/" -u natas4 natas4.natas.labs.overthewire.org)
iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq
natas6(curl -b "loggedin=1" -u natas5 natas5.natas.labs.overthewire.org)
aGoY4q2Dc6MgDq4oL4YtoKtyAg9PeHa1
natas7
7z3hEENjQtflzgnT29q7wAvMNfZdh0i9
natas8(查看源码)
DBfUBfqQG69KvJvJ1iAbMoIpwSNQ9bWe
natas9(用php代码反向编码，由于运行php命令需要php环境，方便的方法是在线php工具，网上有很多)
W0mMhUcRRnG8dcghE4qvk3JA9lGt8nDl
natas10()
nOpp1igQAkUzaI1GUUjzn1bFVj7xCNzu
natas11
U82q5TCMMQ9xuFoI3dYX61s7OZD9JKoK
declare -i x y1 y2 y3

d=`mktemp -d`

echo $d

 

awk '{ for(x=1;x<=NF;x=x+1)print $x }' /krypton/krypton3/found1 >> $d"/found1"

awk '{ for(x=1;x<=NF;x=x+1)print $x }' /krypton/krypton3/found2 >> $d"/found2"

awk '{ for(x=1;x<=NF;x=x+1)print $x }' /krypton/krypton3/found3 >> $d"/found3"

 

sort $d"/found1" | uniq -c |sort > $d"/found11"

sort $d"/found2" | uniq -c |sort > $d"/found12"

sort $d"/found3" | uniq -c |sort > $d"/found13"

exit 0
-----------------------------------------------

KRYPTON

Krypton1
Krypton2
ROTTE
Krypton3
CAESARISEASY
