There are many methods to generate "public" and "privicy" keys.

For example:

Using ssh:

"ssh" is a set of softwares including "openssl" and "openssh" just input following command:

> ssh-keygen(The default alphritum is RSA,you will found them in ~/.ssh/.They are "id_rsa.pub" and "id_rsa".If it has been there,when you run the command ,it will be overwrite!So you can delete it before run "ssh-keygen",there is nothing to affect)

Another is using openssl

>openssl genrsa -aes128 -out loong_private.pem 1024(This command generate a privicy key including a public key in it which is seperated from privicy key by inputting fllowing command)
>openssl rsa  -in loong_private.pem -pubout  > loong_public.pem

The third way is GPG(GPG is similar to PGP ,PGP is comercial software) 

>gpg --gen-key
>gpg --list-keys
>gpg --recipient loong --outpput 2 --encrypt 1
>gpg 2

It is different from ssh.You can not directly generate a pairs of keys. You must use following commands to export them.So remember it.
>gpg --export --armor --ouput public.key loong

