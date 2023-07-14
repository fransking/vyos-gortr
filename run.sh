docker stop vyos-gortr-dn42
docker rm vyos-gortr-dn42

docker run \
    -p 38082:8082 \
    -e CACHE=https://dn42.burble.com/roa/dn42_roa_46.json \
    -e VERIFY=false \
    -e CHECKTIME=false \
    --name vyos-gortr-dn42 fransking/vyos-gortr
