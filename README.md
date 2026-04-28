Deployment Instructions

Step 1 — Configure DNS
- Before running the automation script, 
  update your DNS domain with your server’s public IP address.

- You can verify DNS propagation using:
  ping your-domain

Step 2 — Enter the Project Directory
- Clone the repository and move inside it:
  cd wordpresshosting-ansible

Step 3 — Run the automation script
- Execute:
  ./runthis.sh
- If permission error appears:
  bash runthis.sh

Step 4 — Access your website
- Once the automation completes successfully,
  access the website using your configured DNS domain from any web browser:
  
  https://your-domain  :- WordPress
  https://your-domain/phpmyadmin   :- phpMyAdmin

If the SSL certificate setup fails due to DNS propagation delay, wait a few minutes and retry:

- Run the full deployment script:
  ./runthis.sh

- Or execute only the SSL configuration playbook:
  ansible-playbook -i inventory/hosts.ini playbooks/ssl.yml
