# Update script for clab

clab version upgrade
# Set SUID bit on Containerlab binary
chmod u+s `which containerlab`
# Create clab_admins Unix group
groupadd -r clab_admins
# Add current user to clab_admins group
usermod -aG clab_admins admin