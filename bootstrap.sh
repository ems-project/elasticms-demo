#/bin/bash
./demo-preview.sh ems:admin:login --username=demo

echo "Upload assets"
./demo-preview.sh emsch:local:folder-upload -- /opt/src/admin/assets

echo "Create/Update Filters"
./demo-preview.sh ems:admin:update filter dutch_stemmer
./demo-preview.sh ems:admin:update filter dutch_stop
./demo-preview.sh ems:admin:update filter empty_elision
./demo-preview.sh ems:admin:update filter english_stemmer
./demo-preview.sh ems:admin:update filter english_stop
./demo-preview.sh ems:admin:update filter french_elision
./demo-preview.sh ems:admin:update filter french_stemmer
./demo-preview.sh ems:admin:update filter french_stop
./demo-preview.sh ems:admin:update filter german_stemmer
./demo-preview.sh ems:admin:update filter german_stop


echo "Create/Update Analyzers"
./demo-preview.sh ems:admin:update analyzer alpha_order
./demo-preview.sh ems:admin:update analyzer dutch_for_highlighting
./demo-preview.sh ems:admin:update analyzer english_for_highlighting
./demo-preview.sh ems:admin:update analyzer french_for_highlighting
./demo-preview.sh ems:admin:update analyzer german_for_highlighting
./demo-preview.sh ems:admin:update analyzer html_strip

echo "Create/Update Schedules"
./demo-preview.sh ems:admin:update schedule check-aliases
./demo-preview.sh ems:admin:update schedule clear-logs
./demo-preview.sh ems:admin:update schedule publish-releases

echo "Create/Update WYSIWYG Style Sets"
./demo-preview.sh ems:admin:update wysiwyg-style-set DemoStyleSet
./demo-preview.sh ems:admin:update wysiwyg-style-set RevealJS

echo "Create/Update WYSIWYG Profiles"
./demo-preview.sh ems:admin:update wysiwyg-profile Full
./demo-preview.sh ems:admin:update wysiwyg-profile Light
./demo-preview.sh ems:admin:update wysiwyg-profile Sample
./demo-preview.sh ems:admin:update wysiwyg-profile Standard

echo "Create/Update i18n"
./demo-preview.sh ems:admin:update i18n config
./demo-preview.sh ems:admin:update i18n ems.documentation.body

echo "Create/Update Environments"
./demo-preview.sh ems:admin:update environment preview
./demo-preview.sh ems:admin:update environment live

echo "Create/Update ContentTypes"
./demo-preview.sh ems:admin:update content-type label
./demo-preview.sh ems:admin:update content-type route
./demo-preview.sh ems:admin:update content-type template
./demo-preview.sh ems:admin:update content-type page
./demo-preview.sh ems:admin:update content-type structure
./demo-preview.sh ems:admin:update content-type publication
./demo-preview.sh ems:admin:update content-type slideshow
./demo-preview.sh ems:admin:update content-type form_instance

echo "Create/Update QuerySearches"
./demo-preview.sh ems:admin:update query-search pages
./demo-preview.sh ems:admin:update query-search documents

echo "Create/Update Dashboards"
./demo-preview.sh ems:admin:update dashboard welcome
./demo-preview.sh ems:admin:update dashboard default-search

echo "Create/Update Channels"
./demo-preview.sh ems:admin:update channel preview

echo "Rebuild environments and activate content types"
#./demo-preview.sh ems:admin:job rebuild-preview
./demo-admin.sh ems:environment:rebuild preview
#./demo-preview.sh ems:admin:job rebuild-live
./demo-admin.sh ems:environment:rebuild live
#./demo-preview.sh ems:admin:job activate-all-content-type
./demo-admin.sh ems:contenttype:activate --all

echo "Push templates, routes and translations"
./demo-preview.sh ems:local:push --force

echo "Upload documents"
./demo-preview.sh ems:document:upload page
./demo-preview.sh ems:document:upload structure
./demo-preview.sh ems:document:upload publication
./demo-preview.sh ems:document:upload slideshow
./demo-preview.sh ems:document:upload form_instance

echo "Align live"
./demo-admin.sh ems:environment:align preview live --force
