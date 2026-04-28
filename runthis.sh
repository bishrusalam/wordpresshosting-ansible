set -e

echo "Installing Ansible.."
dnf install ansible-core -y

echo "Installing Ansible collections..."
ansible-galaxy collection install -r requirements.yml

echo "Running playbook..."
ansible-playbook -i inventory/hosts.ini site.yml
