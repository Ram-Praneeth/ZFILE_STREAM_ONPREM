@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'File Stream Interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_FILE_STREAM
 as select from zfile_stream
 {
  key invoice               as Invoice,
  key uuid                  as Uuid,
      comments              as Comments,
      @Semantics.largeObject:
      { mimeType: 'MimeType',
      fileName: 'Filename',
      contentDispositionPreference: #INLINE }
      attachment            as Attachment,
      @Semantics.mimeType: true
      mimetype              as MimeType,
      filename              as Filename,
      //local ETag field --> OData ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at,
//       as LocalLastChangedAt,
      //total ETag field
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at
//             as LastChangedAt
}
