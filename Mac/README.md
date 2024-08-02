# DNS Automation in Mac for 

## with the help of :
- https://www.baeldung.com/linux/use-command-line-arguments-in-bash-script
- https://osxdaily.com/2015/06/02/change-dns-command-line-mac-os-x/
- https://superuser.com/questions/405892/where-can-i-force-a-specific-dns-server-to-be-used-on-os-x
- https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

### for running it use :
```bash
bash dns.sh shecan
```
------
you can also run :
```bash
chmod +x dns.sh shecan
```
then you can
```bash
./dns.sh shecan
```
------
### for accessing it from anywhere 
first rename your file
```bash
mv dns.sh .dns
```
and then give it the required permission by :
```bash
chmod +x .dns
```
then add this to your .profile
```bash
export PATH="$HOME:$PATH"
```
and then 
```bash
source ~/.bashrc
```
no you can run
```
.dns 403
```
## for clearing cache you can also use:
```bash
 sudo killall -HUP mDNSResponder  
```
