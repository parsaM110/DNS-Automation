### for accessing it from anywhere

first rename your file:

```bash
mv dns.sh .dns
```
and then give it the required permission by:

```bash
chmod +x .dns
```
then add this to your .bashrc or .profile:

```bash
export PATH="$HOME:$PATH"
```
now you can run:

```
.dns 403
```

for checking the current active dns config:
```bash
nmcli dev show | grep 'IP4.DNS'
```
