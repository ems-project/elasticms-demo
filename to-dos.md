## elasticms-demo

- feat: computed field with indexed content for search engine
- feat: search
- feat: search with load more in mobile
- feat: test slugs (publication, page, slideshows) are unique on finalize -- DONE for page and slideshow
- feat: photos carousel (block)
- feat: remove hardcoded key from submission in forms
- feat: rights by roles
- feat: script to create a demo bucket in minio
- feat: publication route
- feat: search with * in query search
- feat: missing translation document with one translation
- feat: dropbox form
- feat: quick search view
- feat: draw.io
- feat: draw.io in revision preview
- test: add cypress.io to do frontend tests
- feat: asynchronous file generation + JS app (ems_cache)

## EMSClientHelperbundle

- fix: debug c:c skeleton on start

## EMSFormbundle and EMSSubmissionBundle

- fix: 2 forms on the same page
- feat: chunk upload field in form
- feat: translate submission responses
- fix: mimetype in form

## EMSCoreBundle

- double load from server (image issue)
- feat: index bundle's documentations (md) in a separate (managed?) alias
- ref: remove AppControllers
- feat: clean revisions history (by CT)
- feat: %locales%.show
- fix: reorder content type from 1
- feat: Better image picker
- Update npm (cycle in js)
- ref: trash as datatable view
- feat: json menu, preview template
- feat: collapsable containers
- feat: AssetFieldType (xti, alt text, max size, mimetype filter)
- feat: MultiTextFieldType and MultiTextType (autofill, max, min)
- ref: ems.logger
- feat: template to validate on publish
- feat: i18n as ChoicesFieldType keys/values (in multiplex and tabs fields)
  - require to refactor the DtataFieldType:: getJsonNames as non static method
    - require to refactor the RawDataTransformer as a service
      - require to remove the getData and setData methods from the Revision Entity

## EMSCommonBundle

- feat: ems:admin:* managed-alias

## elasticms

- add a redirect route to reset password: /.well-known/change-password (https://web.dev/change-password-url/)

## elasticms-client

- [] S3 crawler
- [] Debug web to ems

