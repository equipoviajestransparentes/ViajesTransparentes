# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140919153831) do

  create_table "cargo_catalogos", :force => true do |t|
    t.integer  "grupo_id"
    t.string   "cargo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "commissions", :force => true do |t|
    t.integer  "id_mec_origen"
    t.integer  "id_tipo_comision"
    t.integer  "id_representacion"
    t.date     "fechainicio_com"
    t.date     "fechafin_com"
    t.string   "inst_genera"
    t.string   "ur"
    t.integer  "consecutivo"
    t.string   "acuerdo"
    t.string   "oficio"
    t.text     "motivo"
    t.decimal  "comprobado_total"
    t.decimal  "sin_comprobar_total"
    t.decimal  "viatico_devuelto_total"
    t.string   "estatus_comision"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "details", :force => true do |t|
    t.integer  "trip_id"
    t.string   "evento"
    t.string   "url_evento"
    t.date     "fechainicio_part"
    t.date     "fechafin_part"
    t.text     "antecedente"
    t.text     "actividad"
    t.text     "contribucion_ifai"
    t.string   "url_comunicado"
    t.string   "cubre_pasaje"
    t.integer  "tipo_pasaje"
    t.string   "inst_hospedaje"
    t.string   "hotel"
    t.date     "fechainicio_hotel"
    t.date     "fechafin_hotel"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "id_tema_viaje"
    t.string   "latitud_origen"
    t.string   "longitud_origen"
    t.string   "latitud_destino"
    t.string   "longitud_destino"
  end

  create_table "expenses", :force => true do |t|
    t.integer  "trip_id"
    t.integer  "id_moneda"
    t.decimal  "gasto_pasaje"
    t.decimal  "gasto_viatico"
    t.decimal  "costo_hotel"
    t.decimal  "comprobado"
    t.decimal  "sin_comprobar"
    t.decimal  "viatico_devuelto"
    t.decimal  "tarifa_diaria"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "flights", :force => true do |t|
    t.integer  "detail_id"
    t.integer  "vuelo_origen"
    t.integer  "vuelo_regreso"
    t.integer  "linea_origen"
    t.integer  "linea_regreso"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "grupo_catalogos", :force => true do |t|
    t.string   "grupo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "grupos", :force => true do |t|
    t.string   "grupo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "localidades_catalogos", :force => true do |t|
    t.string   "pais"
    t.string   "latitud_pais"
    t.string   "longitud_pais"
    t.string   "estado"
    t.string   "latitud_estado"
    t.string   "longitud_estado"
    t.string   "ciudad"
    t.string   "latitud_ciudad"
    t.string   "longitud_ciudad"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "mecanismo_origen_catalogos", :force => true do |t|
    t.string   "mec_origen"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "moneda_catalogos", :force => true do |t|
    t.string   "moneda"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "public_officers", :force => true do |t|
    t.string   "nombre"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.decimal  "gastos_comprobados_total"
    t.decimal  "gastos_sin_comprobar_total"
    t.decimal  "costo_total"
    t.decimal  "viaticos_devueltos_total"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "id_puesto"
    t.integer  "id_cargo"
    t.integer  "id_cargo_superior"
    t.integer  "id_unidad_adm"
    t.integer  "id_institucion"
    t.integer  "id_tipo_personal"
    t.string   "correo_electronico"
  end

  create_table "tema_de_viaje_catalogos", :force => true do |t|
    t.string   "tema"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_comisions", :force => true do |t|
    t.string   "tipo_com"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_pasaje_catalogos", :force => true do |t|
    t.string   "tipo_pasaje"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tipo_viaje_catalogos", :force => true do |t|
    t.string   "tipo_viaje"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trips", :force => true do |t|
    t.integer  "localidad_origen"
    t.integer  "localidad_destino"
    t.integer  "tipo_viaje"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "officer_commission_id"
  end

end
