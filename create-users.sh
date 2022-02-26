#/bin/bash
./demo-admin.sh fos:user:create author author@example.com author
./demo-admin.sh fos:user:promote author ROLE_AUTHOR
./demo-admin.sh fos:user:promote author ROLE_COPY_PASTE
./demo-admin.sh fos:user:create publisher publisher@example.com publisher
./demo-admin.sh fos:user:promote publisher ROLE_PUBLISHER
./demo-admin.sh fos:user:promote publisher ROLE_COPY_PASTE
./demo-admin.sh fos:user:promote publisher ROLE_ALLOW_ALIGN
./demo-admin.sh fos:user:create webmaster webmaster@example.com webmaster
./demo-admin.sh fos:user:promote webmaster ROLE_WEBMASTER
./demo-admin.sh fos:user:promote webmaster ROLE_COPY_PASTE
./demo-admin.sh fos:user:promote webmaster ROLE_ALLOW_ALIGN
./demo-admin.sh fos:user:promote webmaster ROLE_FORM_CRM
./demo-admin.sh fos:user:promote webmaster ROLE_TASK_MANAGER
./demo-admin.sh fos:user:create demo --super-admin
./demo-admin.sh fos:user:promote demo ROLE_API
./demo-admin.sh fos:user:promote demo ROLE_COPY_PASTE
./demo-admin.sh fos:user:promote demo ROLE_ALLOW_ALIGN
./demo-admin.sh fos:user:promote demo ROLE_FORM_CRM
./demo-admin.sh fos:user:promote demo ROLE_TASK_MANAGER
