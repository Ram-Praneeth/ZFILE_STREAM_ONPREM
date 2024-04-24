@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'File Stream Consumption View'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define root view entity ZC_FILE_STREAM
  provider contract transactional_query
  as projection on ZI_FILE_STREAM
{
  key Invoice,
  key Uuid,
      Comments,
      Attachment,
      MimeType,
      Filename,
//      LocalLastChangedAt
local_last_changed_at
}
