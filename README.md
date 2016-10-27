Provisioning Desktop-Computers
==============================

I use this [Ansible](https://www.ansible.com/)-Configuration to provision my [Ubuntu](https://www.ubuntu.com/)-based Desktop-Computers. My Distribution is [elementary OS](https://elementary.io/)!

One-liner
---------

```bash
wget -qO- https://raw.githubusercontent.com/davidak/ansible-ubuntu-desktop/master/run.sh | bash
```

Manual Install
--------------

### Install Ansible

```bash
apt-get install software-properties-common aptitude git python-simplejson
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible
```

### Clone Repository

```bash
cd ~
mkdir -p code
cd code
git clone https://github.com/davidak/ansible-ubuntu-desktop.git
cd ansible-ubuntu-desktop
```

### Deploy Ansible-Config.

```bash
ansible-playbook setup.yml --ask-sudo-pass --module-path ./ansible_modules --limit "$(hostname)"
```
