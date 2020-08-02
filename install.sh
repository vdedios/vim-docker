#! /bin/bash
GREEN='\033[0;32m'
BLUE='\033[0;36m'
ORANGE='\033[0;33m'
NC='\033[0m'

printf "${GREEN}----------------------------------------------------------------------\n${NC}"
printf "${GREEN}|********************************************************************|\n${NC}"
printf "${GREEN}|                                                                    |\n${NC}"
printf "${GREEN}|Welcome to the instalation of vim-docker: a portable dockerized vim |\n${NC}"
printf "${GREEN}|                                                                    |\n${NC}"
printf "${GREEN}|********************************************************************|\n${NC}"
printf "${GREEN}---------------------------------------------------------------------\n\n\n${NC}"

printf "${BLUE}...Building up docker image 🐳 🐳 🐳${NC}\n\n"
# Build Docker image
docker build -t vim-docker .
printf "${BLUE}Done!${NC}\n\n\n"

printf "${BLUE} Copying executable script into /usr/local/bin ...${NC}\n"
# Ensure script has permissions and copy to binaries 
sudo chmod 774 vimd && cp vimd /usr/local/bin
printf "${BLUE}Done!${NC}\n\n\n"

printf "${ORANGE}---------------------------------------------------------------------\n${NC}"
printf "${ORANGE} Execute vim with: ${BLUE}vimd <files>${NC}\n"
printf "${ORANGE} It will load by default everything from /Users into a root folder called /Local${NC}\n"
printf "${ORANGE} If you would like to change any of these paths go into /usr/local/bin/vimd and change 'HOST_PATH' or 'CONTAINER_PATH' variables${NC}\n"
printf "${ORANGE}---------------------------------------------------------------------\n\n\n${NC}"

printf "${GREEN}------------\n${NC}"
printf "${GREEN}|**********|\n${NC}"
printf "${GREEN}|          |\n${NC}"
printf "${GREEN}|   BYE!   |\n${NC}"
printf "${GREEN}|          |\n${NC}"
printf "${GREEN}|**********|\n${NC}"
printf "${GREEN}------------\n${NC}"
