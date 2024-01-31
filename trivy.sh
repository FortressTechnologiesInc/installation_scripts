# A Simple and Comprehensive Vulnerability Scanner for Containers and other Artifacts, Suitable for CI.

sudo apt-get install wget apt-transport-https gnupg lsb-release
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install trivy
==========================================================================================================================================
trivy script ---
mount
mount -o  remount, rw /  
cat /etc/resolv.conf
echo "nameserver 8.8.8.8" > /etc/resolv.conf
curl -LO --resolve storage.googleapis.com:443:8.8.8.8 --insecure "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
wget https://github.com/aquasecurity/trivy/releases/download/v0.19.2/trivy_0.19.2_Linux-64bit.deb
sudo dpkg -i trivy_0.19.2_Linux-64bit.deb
sudo apt-get install -f
trivy image alpine:3.14
