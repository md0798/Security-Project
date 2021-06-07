#There are two kinds of files in the Code_Files folder, the files with .sh extension or no extension are bash files that can be run using the bash command. The other files are .txt files that are to be read and executed as stated inside the file.
#Firmware Analysis for firmwalker

./firmwalker.sh

#the output of the above command has been posted in Raw_log_files/firmwalker_output.txt

#It is then essential to start by emulating the firmware. That can be achieved by using the following command in the terminal:

bash router_emulation

#After installing all the dependencies, it will start the emulation and assign an IP address to the emulated firmware, note this IP address. Then press the "Enter" key to start the emulation.

#After the emulation has started we can start exploiting the firmware. We have used different tools for this purpose. 
#1. Let's first replicate the CVE bug:

bash cve_bug

#2. We use routersploit to do this. Use the following command to install routersploit and its dependencies on your machine.

bash router_sploit

#Once this script finishes you will be inside the routersploit terminal. There you can follow the "router_exploit.txt" file to exploit the vulnerabilities.

#To exploit the vulnerabilities using Nmap and Metasploit you can start by running the command

bash nmap_meta

#This should show all the open ports, details about the ssh port of the firmware, and install Metasploit and launch a Metasploit terminal. After which you can follow the "metasploit.txt" file to try to exploit ssh vulnerability inside the router firmware. 




# FIRM-AFL

#FIRM-AFL is a fuzzer for IoT firmware. Here we will go through the steps of fuzzing a Netgear WNAP 320 Router. The script to run the process can be is in “fiirmafl”.
Before running that script, download the data folder from here: https://cmu.app.boxcn.net/s/hnpvf1n72uccnhyfe307rc2nb9rfxmjp 

```bash
./firmafl
```

# What happens is:

#We first clone the FirmAFL repo. 

#We then have to compile the user mode and the system mode separately. 

#We then have to setup Firmadyne and edit the database with the data folder that we downloaded

#We need to also install binwalk because the extractor tool depends on it.

#Next, we have to setup and configure the database, note that we use the password “firmadyne”. Also, edit the location in line 
```bash
cp ~/jm5251.data.xz ./
```
#To the location of your FirmAFL downloaded schema

#We also have to set the FIRMADYNE_DIR in firmadyne.config to point to the root of the directory 

#We then download the firmware and use the extractor to recover only the filesystem, and finally, we run the program

#The images on the pdf have been snipped to fit the 2 column format, however, the full resolution images are available at the /images/ folder in the .zip from overleaf (this includes the auxiliary files and can be used to generate the .pdf from the .tex)

#Also, the citations are ordered alphabetically and not by the order of appearance in the document as we were asked to use \bibliographystyle{ACM-Reference-Format} in the template.
