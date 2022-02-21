echo "Update admin configs Filters"
demo-preview ems:admin:get filter --export

echo "Update admin configs Analyzers"
demo-preview ems:admin:get analyzer --export

echo "Update admin configs Schedules"
demo-preview ems:admin:get schedule --export

echo "Update admin configs WYSIWYG Style Sets"
demo-preview ems:admin:get wysiwyg-style-set --export

echo "Update admin configs WYSIWYG Profiles"
demo-preview ems:admin:get wysiwyg-profile --export

echo "Update admin configs i18n"
demo-preview ems:admin:get i18n --export

echo "Update admin configs Environments"
demo-preview ems:admin:get environment --export

echo "Update admin configs ContentTypes"
demo-preview ems:admin:get content-type --export

echo "Update admin configs QuerySearches"
demo-preview ems:admin:get query-search --export

echo "Update admin configs Dashboards"
demo-preview ems:admin:get dashboard --export

echo "Update admin configs Channels"
demo-preview ems:admin:get channel --export

echo "Download slideshows"
demo-preview ems:document:download slideshow

