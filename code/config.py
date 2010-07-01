[aws info]
aws_access_key_id = #your_aws_access_key_id
aws_secret_access_key = #your_secret_access_key
aws_user_id= #your userid

[key mykeypair]
key_location=/home/myuser/.ssh/mykeypair.rsa

[cluster smallcluster]
cluster_size = 2
keyname = gsg-keypair
cluster_user = sgeadmin
cluster_shell = bash
node_image_id = ami-d1c42db8
node_instance_type = m1.small
