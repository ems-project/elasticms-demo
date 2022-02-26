call demo-admin fos:user:create author author@example.com author
call demo-admin fos:user:promote author ROLE_AUTHOR
call demo-admin fos:user:promote author ROLE_COPY_PASTE
call demo-admin fos:user:create publisher publisher@example.com publisher
call demo-admin fos:user:promote publisher ROLE_PUBLISHER
call demo-admin fos:user:promote publisher ROLE_COPY_PASTE
call demo-admin fos:user:promote publisher ROLE_ALLOW_ALIGN
call demo-admin fos:user:create webmaster webmaster@example.com webmaster
call demo-admin fos:user:promote webmaster ROLE_WEBMASTER
call demo-admin fos:user:promote webmaster ROLE_COPY_PASTE
call demo-admin fos:user:promote webmaster ROLE_ALLOW_ALIGN
call demo-admin fos:user:promote webmaster ROLE_FORM_CRM
call demo-admin fos:user:promote webmaster ROLE_TASK_MANAGER
call demo-admin fos:user:create demo --super-admin
call demo-admin fos:user:promote demo ROLE_API
call demo-admin fos:user:promote demo ROLE_COPY_PASTE
call demo-admin fos:user:promote demo ROLE_ALLOW_ALIGN
call demo-admin fos:user:promote demo ROLE_FORM_CRM
call demo-admin fos:user:promote demo ROLE_TASK_MANAGER
