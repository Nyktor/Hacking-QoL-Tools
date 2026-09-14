# URL-ify your string
Simple tool that converts a piece of string into its URL-encoded version, replacing spaces by '%20', double quotes by '%22', etc.

Converts **all ASCII characters** into their UTF-8 encoded version except for uppercase and lowercase letters and numbers (A-Za-z0-9).

# Useful for:
Encoding payloads that will be used in SQL-injections, Reflected XSS, or, perhaps, simple cURLs.
