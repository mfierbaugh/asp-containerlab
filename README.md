# ASP Containerlab

ASP Containerlab is a pre-built environment meant to be run on Cisco's dcloud infrastructure.  The dcloud VM can access both public docker repos and has read access to pull froma  central repository of images stored on a private repo.  There is a collection of pre-built labs that leverage the VM's setup as a way to reduce the amount of time to create/build/configure a working lab/demo. These labs are stored in github and accessable via the dcloud VM. 


The ASP Containerlab enviornment consists of the following:
- Large VM for running the containers using containerlab
- Small/Medium VM for running a preconfigured telemetry stack (Telegraf/Influx/Grafana)
- A Windows VM if you wish to access the devices using a remote desktop client

Management Network
dcloud has a flat management network for which the virtual machines attach via the host VM.  
- All routers in a lab have a dedicated management interface. 
- All management interfaces are are in a Management VRF
- Management IP addresses are directly acccessable from 

Automated Labs
There are a few automated labs that are prebuilt.  
- clab yaml file that describes the lab topology
- Ansible playbook that 