demo-preview ems:admin:login --username=demo

echo "Upload assets"
demo-preview emsch:local:folder-upload -- /opt/src/admin/assets

echo "Create/Update Filters"
demo-preview ems:admin:update filter dutch_stemmer
demo-preview ems:admin:update filter dutch_stop
demo-preview ems:admin:update filter empty_elision
demo-preview ems:admin:update filter english_stemmer
demo-preview ems:admin:update filter english_stop
demo-preview ems:admin:update filter french_elision
demo-preview ems:admin:update filter french_stemmer
demo-preview ems:admin:update filter french_stop
demo-preview ems:admin:update filter german_stemmer
demo-preview ems:admin:update filter german_stop


echo "Create/Update Analyzers"
demo-preview ems:admin:update analyzer alpha_order
demo-preview ems:admin:update analyzer dutch_for_highlighting
demo-preview ems:admin:update analyzer english_for_highlighting
demo-preview ems:admin:update analyzer french_for_highlighting
demo-preview ems:admin:update analyzer german_for_highlighting
demo-preview ems:admin:update analyzer html_strip

echo "Create/Update Schedules"
demo-preview ems:admin:update schedule check-aliases
demo-preview ems:admin:update schedule clear-logs
demo-preview ems:admin:update schedule publish-releases

echo "Create/Update WYSIWYG Style Sets"
demo-preview ems:admin:update wysiwyg-style-set DemoStyleSet
demo-preview ems:admin:update wysiwyg-style-set RevealJS

echo "Create/Update WYSIWYG Profiles"
demo-preview ems:admin:update wysiwyg-profile Full
demo-preview ems:admin:update wysiwyg-profile Light
demo-preview ems:admin:update wysiwyg-profile Sample
demo-preview ems:admin:update wysiwyg-profile Standard

echo "Create/Update i18n"
demo-preview ems:admin:update i18n config
demo-preview ems:admin:update i18n ems.documentation.body

echo "Create/Update Environments"
demo-preview ems:admin:update environment preview
demo-preview ems:admin:update environment live

echo "Create/Update ContentTypes"
demo-preview ems:admin:update content-type label
demo-preview ems:admin:update content-type route
demo-preview ems:admin:update content-type template
demo-preview ems:admin:update content-type page
demo-preview ems:admin:update content-type structure
demo-preview ems:admin:update content-type publication
demo-preview ems:admin:update content-type slideshow

echo "Create/Update QuerySearches"
demo-preview ems:admin:update query-search pages

echo "Create/Update Dashboards"
demo-preview ems:admin:update dashboard welcome
demo-preview ems:admin:update dashboard default-search

echo "Create/Update Channels"
demo-preview ems:admin:update channel preview

echo "Rebuild environments and activate content types"
#demo-preview ems:admin:job rebuild-preview
demo-admin ems:environment:rebuild preview
#demo-preview ems:admin:job rebuild-live
demo-admin ems:environment:rebuild live
#demo-preview ems:admin:job activate-all-content-type
demo-admin ems:contenttype:activate --all

echo "Push templates, routes and translations"
demo-preview ems:local:push --force

echo "Upload documents"
demo-preview ems:document:upload slideshow

echo "Align live"
demo-admin ems:environment:align preview live --force