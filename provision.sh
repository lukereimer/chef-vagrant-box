apt-get install -y vim

# Install the Chef DK

wget -q https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.4.0-1_amd64.deb
dpkg -i chefdk_0.4.0-1_amd64.deb 
echo "PATH=/opt/chefdk/bin:/opt/chefdk/embedded/bin:$PATH" >> /etc/environment
