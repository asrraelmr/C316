@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes_Libro'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_CLNT_LI_4402 as select from ztb_clnt_li_4402
{
    key id_libro as IdLibro,
    count( distinct id_cliente)as Ventas
}
group by  id_libro;
