set -e
set -x

if [ -f /etc/disk_added_date ] ; then
   echo "disk already added so exiting."
   exit 0
fi

sudo fdisk -u /dev/sdc <<EOF
n
p
1


t
83
w
EOF

sudo mkfs.ext3 /dev/sdc1
sudo mkdir /media/data
sudo mount /dev/sdc1 /media/data/

date > /etc/disk_added_date
