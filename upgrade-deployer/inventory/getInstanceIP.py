#!/usr/bin/python
import os
import re

if os.path.isfile('instances.yaml'):
  fh=open('instances.yaml','r')
  f=fh.read()
  print(f)
  instance_ip=re.findall(r'\bip\:\s(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})',f)
  instance_ip_new=instance_ip[1:]
  print(instance_ip_new)
  with open('hosts.txt','wb') as hosts:
	for ips in instance_ip_new:
  		hosts.write("%s\n" %ips)
  hosts.close()
  user=re.findall(r'\bssh_user:\s(\w+)',f)
  user1=user[0]
  pwd=re.findall(r'\bssh_pwd:\s(\w+)',f)
  pwd1=pwd[0]
else:
  print("no such file")
  
  #for i in instance_ip_new:
    #cmd="/usr/bin/sshpass"+" "+"-"+"f"+" " + "hosts.txt" + " " +"ssh-copy-id" +" "+"user1"+"@"+i
    #cmd="ssh-copy-id" +user1+"@"+i
    #os.system("sshpass", "-p" + pwd1 + cmd)
    #print(os.system(cmd))
    #print("Key added: ", i)
