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

ActiveRecord::Schema.define(:version => 20140913163158) do

  create_table "commission_officers", :force => true do |t|
    t.integer  "public_officer_id"
    t.integer  "commission_id"
    t.text     "resultado"
    t.text     "observaciones"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
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
    t.integer  "id_mec_origen"
    t.string   "inst_genera"
    t.string   "ur"
    t.string   "tipo_rep"
    t.string   "integer"
    t.integer  "consecutivo"
    t.string   "acuerdo"
    t.string   "oficio"
    t.integer  "tipo_com"
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
    t.text     "observaciones"
    t.string   "detalle_viaje_col"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
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

  create_table "public_officers", :force => true do |t|
    t.string   "nombre"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.integer  "puesto"
    t.decimal  "gastos_comprobados_total"
    t.decimal  "gastos_sin_comprobar_total"
    t.decimal  "costo_total"
    t.decimal  "viaticos_devueltos_total"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "trips", :force => true do |t|
    t.integer  "public_officer_id"
    t.integer  "localidad_origen"
    t.integer  "localidad_destino"
    t.integer  "tipo_viaje"
    t.date     "fechainicio_com"
    t.date     "fechafin_com"
    t.integer  "tema"
    t.text     "motivo"
    t.text     "resultado"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
