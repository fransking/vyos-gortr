# vyos-gortr
GoRTR container suitable for running on VyOS

```
add container image fransking/vyos-gortr
configure

set container network dn42-roa prefix 172.20.0.0/16
set container name dn42-roa image fransking/vyos-gortr
set container name dn42-roa network dn42-roa
set container name dn42-roa port roa source 38082
set container name dn42-roa port roa destination 8082
set container name dn42-roa port roa protocol tcp
set container name dn42-roa environment 'CACHE' value 'https://dn42.burble.com/roa/dn42_roa_46.json'
set container name dn42-roa environment 'VERIFY' value 'false'
set container name dn42-roa environment 'CHECKTIME' value 'false'

commit 
save
```