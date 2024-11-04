@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_CLIENTE_4402
  as select from ztb_cliente_4402 as Clientes
    inner join   ztb_clnt_li_4402 as Clientes_Libros on Clientes_Libros.id_cliente = Clientes.id_cliente
{
  key Clientes_Libros.id_libro as IdLibro,
  key Clientes.id_cliente      as IdCliente,
  key Clientes.tipo_acceso     as TipoAcceso,
      Clientes.nombre          as Nombre,
      Clientes.apellidos       as Apellidos,
      Clientes.email           as Email,
      Clientes.url             as Imagen
}
