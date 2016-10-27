sudo apt-get install software-properties-common aptitude git python-simplejson
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

cd ~
mkdir -p code
cd code
git clone https://github.com/davidak/ansible-ubuntu-desktop.git
cd ansible-ubuntu-desktop

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules --extra-vars "@config.json"

source ~/.bashrc
exit 0
