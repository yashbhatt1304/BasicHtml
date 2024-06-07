This is Basic HTML code for CICD pipeline cofiguration

Run the following command in the EC2 instance.

sudo apt update
sudo apt install python
sudo apt install nginx
git clone https://github.com/yashbhatt1304/BasicHtml_CICD_HeroVired.git
sudo rm -rf /var/www/html/
sudo cp -r /home/ubuntu/BasicHtml_CICD/ /var/www/html/  