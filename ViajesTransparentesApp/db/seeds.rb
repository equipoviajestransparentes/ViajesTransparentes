# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  connection = ActiveRecord::Base.connection
 
  ################# INSTITUCION ###############
  #sql_institucion_catalogo = File.read('db/Scripts/ifai_institucion_catalogo.sql')
  #statements = sql_institucion_catalogo.split(/;$/)
  #statements.pop
 
  #ActiveRecord::Base.transaction do
  #  statements.each do |statement|
  #    connection.execute(statement)
  #  end
  #end
  ############################################


####################### PUESTO #####################
 # sql_puesto = File.read('db/Scripts/ifai_puesto_catalogo.sql')
 # statements = sql_puesto.split(/;$/)
 # statements.pop
# 
#  ActiveRecord::Base.transaction do
#    statements.each do |statement|
#      connection.execute(statement)
#    end
#  end
###########################################

 ########################### TIPO PERSONAL ###########################################
# sql_tipo_personal = File.read('db/Scripts/ifai_tipo_personal_catalogo.sql')
#  statements = sql_tipo_personal.split(/;$/)
#  statements.pop
# 
#  ActiveRecord::Base.transaction do
##    statements.each do |statement|
##      connection.execute(statement)
#    end
#  end
  ####################################################

#################### UNIDAD ADM #######################
# sql_unidad_adm = File.read('db/Scripts/ifai_unidad_administrativa_catalogo.sql')
#  statements = sql_unidad_adm.split(/;$/)
#  statements.pop
# 
##  ActiveRecord::Base.transaction do
#    statements.each do |statement|
#      connection.execute(statement)
#    end
#  end
  ###############################################################

########################## CARGOS ##############################
#  sql_cargo = File.read('db/Scripts/ifai_cargo_catalogo.sql')
#  statements = sql_cargo.split(/;$/)
#  statements.pop
# 
#  ActiveRecord::Base.transaction do
#    statements.each do |statement|
#      connection.execute(statement)
#    end
#  end
######################################################################

######################### MECANISMO ORIGEN #############################################
# sql_cargo = File.read('db/Scripts/ifai_mecanismo_origen_catalogo.sql')
#  statements = sql_cargo.split(/;$/)
#  statements.pop
# 
#  ActiveRecord::Base.transaction do
#    statements.each do |statement|
#      connection.execute(statement)
#    end
#  end
######################################################################

########################### TIPO COMISION ###########################################
 sql_cargo = File.read('db/Scripts/ifai_tipo_comision_catalogo.sql')
  statements = sql_cargo.split(/;$/)
  statements.pop
 
  ActiveRecord::Base.transaction do
    statements.each do |statement|
      connection.execute(statement)
    end
  end
#######################################################################

######################################################################
#  sql_cargo = File.read('db/Scripts/ifai_cargo_catalogo.sql')
#  statements = sql_cargo.split(/;$/)
#  statements.pop
# 
#  ActiveRecord::Base.transaction do
#    statements.each do |statement|
#      connection.execute(statement)
#    end
#  end
########################################################################