use the alt + f/s/a shortcut to open a elevated powershell window within the current folder.
then run :
```powershell
.\dns.ps1 shecan
```
- https://learn.microsoft.com/en-us/powershell/module/dnsclient/set-dnsclientserveraddress?view=windowsserver2022-ps

# for making the ps1 universally available

put it in  C:\scriptlocation\dns.ps1

## method 1
go to adding environment variable > PATH 
put the address C:\scriptlocation

## method 2
type `$Profile`
and see the Profile 
if the folder and file doesn't exit > then `mkdir` it
```ps1
notepad C:\Users\Asus\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1                                               
```
and put :
```ps1
Set-Alias dns C:\scriptlocation\dns.ps1
```
---
if you encounter this error:
```diff
-  is not digitally
- signed. You cannot run this script on the current system. For more information about running scripts and setting
- execution policy, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.
- At line:1 char:1
```
go and run this in terminal:
```dns1
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```
after this I still got errors :
I did this for this time :
```dns1
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
```
## flush dns
```
ipconfig /flushdns
```
# Sources
- https://stackoverflow.com/questions/57838060/how-to-make-a-powershell-script-avaiable-from-anywhere#:~:text=If%20you%20want%20to%20add,PS1%20file%20from%20anywhere.&text=Name%20the%20script%20something%20meaningful,the%20dir%20to%20windows%20env.
- https://www.techtarget.com/searchwindowsserver/tutorial/How-to-find-and-customize-your-PowerShell-profile
- https://stackoverflow.com/questions/9742775/why-is-my-locally-created-script-not-allowed-to-run-under-the-remotesigned-execu
- https://stackoverflow.com/questions/41117421/ps1-cannot-be-loaded-because-running-scripts-is-disabled-on-this-system
- https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_signing?view=powershell-7.4
- https://codesigningstore.com/how-to-sign-a-powershell-script
