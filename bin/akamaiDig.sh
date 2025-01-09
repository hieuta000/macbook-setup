echo Checking $1
dig cname $1 | grep -E "edgesuite.net|edgekey.net|akamai.net|amakaiedge.net"

