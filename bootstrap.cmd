@echo off
call demo-preview ems:admin:login --username=demo

echo "Upload assets"
call demo-preview emsch:local:folder-upload -- /opt/src/admin/assets

echo "Create/Update Filters"
call demo-preview ems:admin:update filter dutch_stemmer
call demo-preview ems:admin:update filter dutch_stop
call demo-preview ems:admin:update filter empty_elision
call demo-preview ems:admin:update filter english_stemmer
call demo-preview ems:admin:update filter english_stop
call demo-preview ems:admin:update filter french_elision
call demo-preview ems:admin:update filter french_stemmer
call demo-preview ems:admin:update filter french_stop
call demo-preview ems:admin:update filter german_stemmer
call demo-preview ems:admin:update filter german_stop


echo "Create/Update Analyzers"
call demo-preview ems:admin:update analyzer alpha_order
call demo-preview ems:admin:update analyzer dutch_for_highlighting
call demo-preview ems:admin:update analyzer english_for_highlighting
call demo-preview ems:admin:update analyzer french_for_highlighting
call demo-preview ems:admin:update analyzer german_for_highlighting
call demo-preview ems:admin:update analyzer html_strip

echo "Create/Update Schedules"
call demo-preview ems:admin:update schedule check-aliases
call demo-preview ems:admin:update schedule clear-logs
call demo-preview ems:admin:update schedule publish-releases

echo "Create/Update WYSIWYG Style Sets"
call demo-preview ems:admin:update wysiwyg-style-set DemoStyleSet
call demo-preview ems:admin:update wysiwyg-style-set RevealJS

echo "Create/Update WYSIWYG Profiles"
call demo-preview ems:admin:update wysiwyg-profile Full
call demo-preview ems:admin:update wysiwyg-profile Light
call demo-preview ems:admin:update wysiwyg-profile Sample
call demo-preview ems:admin:update wysiwyg-profile Standard

echo "Create/Update i18n"
call demo-preview ems:admin:update i18n config
call demo-preview ems:admin:update i18n ems.documentation.body
call demo-preview ems:admin:update i18n locale.fr
call demo-preview ems:admin:update i18n locale.nl
call demo-preview ems:admin:update i18n locale.de
call demo-preview ems:admin:update i18n locale.en
call demo-preview ems:admin:update i18n asset.type.manual

echo "Create/Update Environments"
call demo-preview ems:admin:update environment preview
call demo-preview ems:admin:update environment live

echo "Create/Update ContentTypes"
call demo-preview ems:admin:update content-type label
call demo-preview ems:admin:update content-type route
call demo-preview ems:admin:update content-type template
call demo-preview ems:admin:update content-type page
call demo-preview ems:admin:update content-type structure
call demo-preview ems:admin:update content-type publication
call demo-preview ems:admin:update content-type slideshow
call demo-preview ems:admin:update content-type form_instance
call demo-preview ems:admin:update content-type asset

echo "Create/Update QuerySearches"
call demo-preview ems:admin:update query-search pages
call demo-preview ems:admin:update query-search documents

echo "Create/Update Dashboards"
call demo-preview ems:admin:update dashboard welcome
call demo-preview ems:admin:update dashboard default-search

echo "Create/Update Channels"
call demo-preview ems:admin:update channel preview

echo "Rebuild environments and activate content types"
#call demo-preview ems:admin:job rebuild-preview
call demo-admin ems:environment:rebuild preview
#call demo-preview ems:admin:job rebuild-live
call demo-admin ems:environment:rebuild live
#call demo-preview ems:admin:job activate-all-content-type
call demo-admin ems:contenttype:activate --all

echo "Push templates, routes and translations"
call demo-preview ems:local:push --force

echo "Upload documents"
call demo-preview ems:document:upload page
call demo-preview ems:document:upload structure
call demo-preview ems:document:upload publication
call demo-preview ems:document:upload slideshow
call demo-preview ems:document:upload form_instance
call demo-preview ems:document:upload asset

echo "Align live"
call demo-admin ems:environment:align preview live --force
