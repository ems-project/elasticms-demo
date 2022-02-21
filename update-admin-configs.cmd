echo "Update admin configs Filters"
call demo-preview ems:admin:get filter --export

echo "Update admin configs Analyzers"
call demo-preview ems:admin:get analyzer --export

echo "Update admin configs Schedules"
call demo-preview ems:admin:get schedule --export

echo "Update admin configs WYSIWYG Style Sets"
call demo-preview ems:admin:get wysiwyg-style-set --export

echo "Update admin configs WYSIWYG Profiles"
call demo-preview ems:admin:get wysiwyg-profile --export

echo "Update admin configs i18n"
call demo-preview ems:admin:get i18n --export

echo "Update admin configs Environments"
call demo-preview ems:admin:get environment --export

echo "Update admin configs ContentTypes"
call demo-preview ems:admin:get content-type --export

echo "Update admin configs QuerySearches"
call demo-preview ems:admin:get query-search --export

echo "Update admin configs Dashboards"
call demo-preview ems:admin:get dashboard --export

echo "Update admin configs Channels"
call demo-preview ems:admin:get channel --export

echo "Download documents"
call demo-preview ems:document:download page
call demo-preview ems:document:download slideshow

