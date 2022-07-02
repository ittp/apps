set data="deb http://us.archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse

deb http://us.archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse

deb http://us.archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse"


function file() {
    local file=$1
    local url=$(curl -s $2)
    
    cat <<EOF > $file $data EOF
}

# /etc/apt/sources.list


cat <<EOF > /etc/apt/sources.list

EOF

sql=$(cat <<EOF
SELECT foo, bar FROM db
WHERE foo='baz'
EOF
)
cat <<EOF > print.sh
#!/bin/bash
echo \$PWD
echo $PWD
EOF


cat <<EOF | grep 'b' | tee b.txt
foo
bar
baz
EOF


cat >> temp.txt


if test -r /etc/profile; then
        . /etc/profile
fi
