@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for PLZ'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_FT05_PLZ_VH
  as select from zft05_plz
{
  key plz  as Postcode,
      city as City
}
