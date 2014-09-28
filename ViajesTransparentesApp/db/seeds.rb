# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  connection = ActiveRecord::Base.connection
  
  ################# INSTITUCION ###############
	sql_institucion_catalogo = File.read('db/Scripts/ifai_institucion_catalogo.sql')
	statements = sql_institucion_catalogo.split(/;/)
	statements.pop
	 
	 ActiveRecord::Base.transaction do
	   statements.each do |statement|
		 connection.execute(statement)
	   end
	 end
 ############################################
################# SERVIDOR ###############
sql_servidor = File.read('db/Scripts/ifai_servidor_publico.sql')
stat_servidor = sql_servidor.split(/;/)
stat_servidor.pop

ActiveRecord::Base.transaction do
  stat_servidor.each do |statement|
    connection.execute(statement)
  end
end
#############################################

###################### PUESTO #####################
 sql_puesto = File.read('db/Scripts/ifai_puesto_catalogo.sql')
 stat_puesto = sql_puesto.split(/;/)
 stat_puesto.pop
 
  ActiveRecord::Base.transaction do
    stat_puesto.each do |statement|
      connection.execute(statement)
    end
  end
##########################################

######################### TIPO PERSONAL ###########################################
sql_tipo_personal = File.read('db/Scripts/ifai_tipo_personal_catalogo.sql')
 stat_tipo_personal = sql_tipo_personal.split(/;/)
 stat_tipo_personal.pop

 ActiveRecord::Base.transaction do
   stat_tipo_personal.each do |statement|
     connection.execute(statement)
   end
 end
###################################################
######################## CARGOS ##############################
  sql_cargo = File.read('db/Scripts/ifai_cargo_catalogo.sql')
  stat_cargo = sql_cargo.split(/;/)
  stat_cargo.pop
 
  ActiveRecord::Base.transaction do
    stat_cargo.each do |statement|
      connection.execute(statement)
    end
  end
####################################################################
####################### MECANISMO ORIGEN #############################################
 sql_mec_orig = File.read('db/Scripts/ifai_mecanismo_origen_catalogo.sql')
  stat_mec_orig = sql_mec_orig.split(/;/)
  stat_mec_orig.pop
 
  ActiveRecord::Base.transaction do
    stat_mec_orig.each do |statement|
      connection.execute(statement)
    end
  end
####################################################################
########################## TIPO COMISION ###########################################
 sql_tp_com = File.read('db/Scripts/ifai_tipo_comision_catalogo.sql')
  stat_tp_com = sql_tp_com.split(/;/)
  stat_tp_com.pop
 
  ActiveRecord::Base.transaction do
    stat_tp_com.each do |statement|
      connection.execute(statement)
    end
  end
######################################################################
################## UNIDAD ADM #######################
 sql_unidad_adm = File.read('db/Scripts/ifai_unidad_administrativa_catalogo.sql')
  stat_unidad_adm = sql_unidad_adm.split(/;/)
  stat_unidad_adm.pop
 
  ActiveRecord::Base.transaction do
    stat_unidad_adm.each do |statement|
      connection.execute(statement)
    end
  end
 ###############################################################

################# LOCALIDAD ###############
 sql_localidades = File.read('db/Scripts/ifai_localidades_catalogo.sql')
  stat_localidades = sql_localidades.split(/;/)
  stat_localidades.pop
 
  ActiveRecord::Base.transaction do
    stat_localidades.each do |statement|
      connection.execute(statement)
    end
  end
##############################################
#
################## JUSTIFICACION ###############
 sql_justificacion = File.read('db/Scripts/ifai_justificacion_catalogo.sql')
  stat_justificacion = sql_justificacion.split(/;/)
  stat_justificacion.pop
 
  ActiveRecord::Base.transaction do
    stat_justificacion.each do |statement|
      connection.execute(statement)
    end
  end
##############################################
#
################## CONCEPTO ###############
 sql_concepto = File.read('db/Scripts/ifai_concepto_catalogo.sql')
  stat_concepto = sql_concepto.split(/;/)
  stat_concepto.pop
 
  ActiveRecord::Base.transaction do
    stat_concepto.each do |statement|
      connection.execute(statement)
    end
  end
##############################################
#
################## MONEDA ###############
sql_moneda = File.read('db/Scripts/ifai_moneda_catalogo.sql')
 stat_moneda = sql_moneda.split(/;/)
 stat_moneda.pop

 ActiveRecord::Base.transaction do
   stat_moneda.each do |statement|
     connection.execute(statement)
   end
 end
##############################################
#
################## REPRESENTACION ###############
 sql_representacion = File.read('db/Scripts/ifai_representacion_catalogo.sql')
  stat_representacion = sql_representacion.split(/;/)
  stat_representacion.pop
 
  ActiveRecord::Base.transaction do
    stat_representacion.each do |statement|
      connection.execute(statement)
    end
  end
##############################################
#
################## Tipo pasaje ###############
 sql_tp_pasaje = File.read('db/Scripts/ifai_tipo_pasaje_catalogo.sql')
  stat_tp_pasaje = sql_tp_pasaje.split(/;/)
  stat_tp_pasaje.pop
 
  ActiveRecord::Base.transaction do
    stat_tp_pasaje.each do |statement|
      connection.execute(statement)
    end
  end
##############################################
#
################## Tipo viaje ###############
 sql_tp_viaje = File.read('db/Scripts/ifai_tipo_viaje_catalogo.sql')
  stat_tp_viaje = sql_tp_viaje.split(/;/)
  stat_tp_viaje.pop
 
  ActiveRecord::Base.transaction do
    stat_tp_viaje.each do |statement|
      connection.execute(statement)
    end
  end
###########################################

################## Tema viaje ###############
sql_tema_viaje = File.read('db/Scripts/ifai_tema_de_viaje_catalogo.sql')
 stat_tema_viaje = sql_tema_viaje.split(/;/)
 stat_tema_viaje.pop

 ActiveRecord::Base.transaction do
   stat_tema_viaje.each do |statement|
     connection.execute(statement)
   end
 end
##############################################
#
################## viatico ###############
 sql_viatico = File.read('db/Scripts/ifai_viatico_catalogo.sql')
  stat_viatico = sql_viatico.split(/;/)
  stat_viatico.pop
 
  ActiveRecord::Base.transaction do
    stat_viatico.each do |statement|
      connection.execute(statement)
    end
  end
##############################################
  #Despues de cargar los catalogos se deben cargar los registros
##############################################Comision, detalle viaje, viaje, vuelo, costo, gasto#########################
 sql_comision = File.read('db/Scripts/comision.sql')
  stat_comision = sql_comision.split(/;/)
  stat_comision.pop
 
  ActiveRecord::Base.transaction do
    stat_comision.each do |statement|
      connection.execute(statement)
    end
  end
 #############Viaje######
 sql_Viaje = File.read('db/Scripts/viaje.sql')
  stat_Viaje = sql_Viaje.split(/;/)
  stat_Viaje.pop
 
  ActiveRecord::Base.transaction do
    stat_Viaje.each do |statement|
      connection.execute(statement)
    end
  end
 ###################################################
 
 ##################Detalle Viaje###################
 sql_detViaje = File.read('db/Scripts/detalleviaje.sql')
 stat_detViaje = sql_detViaje.split(/;/)
 stat_detViaje.pop

 ActiveRecord::Base.transaction do
   stat_detViaje.each do |statement|
     connection.execute(statement)
   end
 end
#####################################################
######################Vuelo##########################
 sql_vuelo = File.read('db/Scripts/vuelo.sql')
  stat_vuelo = sql_vuelo.split(/;/)
  stat_vuelo.pop
 
  ActiveRecord::Base.transaction do
    stat_vuelo.each do |statement|
      connection.execute(statement)
    end
  end
####################################################
 
#######################Costo##########################
 sql_costo = File.read('db/Scripts/costo.sql')
  stat_costo = sql_costo.split(/;/)
  stat_costo.pop
 
  ActiveRecord::Base.transaction do
    stat_costo.each do |statement|
      connection.execute(statement)
    end
  end
#####################################################
########################Gasto########################
 sql_gasto = File.read('db/Scripts/gasto.sql')
  stat_gasto = sql_gasto.split(/;/)
  stat_gasto.pop
 
  ActiveRecord::Base.transaction do
    stat_gasto.each do |statement|
      connection.execute(statement)
    end
  end
##################################################
