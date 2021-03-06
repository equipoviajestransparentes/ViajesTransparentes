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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141005143925) do

  create_table "cargo_catalogos", force: true do |t|
    t.integer "grupo_id"
    t.string  "cargo"
  end

  create_table "cargos", force: true do |t|
    t.string "cargo"
  end

  create_table "ciudadanos", id: false, force: true do |t|
    t.string   "id_correo",  null: false
    t.string   "nombre"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ciudadanos", ["id_correo"], name: "index_ciudadanos_on_id_correo", unique: true

  create_table "commission_officers", force: true do |t|
    t.integer  "public_officer_id"
    t.integer  "commission_id"
    t.text     "resultado"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commissions", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "public_officer_id"
    t.text     "resultado"
    t.text     "observaciones"
  end

  create_table "concepto_catalogos", force: true do |t|
    t.string "concepto"
  end

  create_table "consulta_viajes", force: true do |t|
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.integer  "public_officer_id"
    t.decimal  "min_precio"
    t.decimal  "max_precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_tema_viaje"
    t.string   "latitud_origen"
    t.string   "longitud_origen"
    t.string   "latitud_destino"
    t.string   "longitud_destino"
  end

  create_table "expenses", force: true do |t|
    t.integer  "trip_id"
    t.integer  "id_moneda"
    t.decimal  "gasto_pasaje",      precision: 10, scale: 2, default: 0.0
    t.decimal  "gasto_viatico",     precision: 10, scale: 2, default: 0.0
    t.decimal  "costo_hotel",       precision: 10, scale: 2, default: 0.0
    t.decimal  "comprobado",        precision: 10, scale: 2, default: 0.0
    t.decimal  "sin_comprobar",     precision: 10, scale: 2, default: 0.0
    t.decimal  "viatico_devuelto",  precision: 10, scale: 2, default: 0.0
    t.decimal  "tarifa_diaria",     precision: 10, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "gasto_alimento",    precision: 10, scale: 2, default: 0.0
    t.decimal  "gasto_otro",        precision: 10, scale: 2, default: 0.0
    t.decimal  "viaticos_total",    precision: 10, scale: 2, default: 0.0
    t.decimal  "viaticos_faltante", precision: 10, scale: 2, default: 0.0
  end

  create_table "flights", force: true do |t|
    t.integer  "detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vuelo_origen"
    t.string   "vuelo_regreso"
    t.string   "linea_origen"
    t.string   "linea_regreso"
  end

  create_table "gastos", force: true do |t|
    t.integer  "trip_id"
    t.date     "fh_comprobante"
    t.integer  "id_concepto"
    t.decimal  "importe"
    t.integer  "id_moneda"
    t.string   "existe_comprobante"
    t.integer  "id_justificacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupo_catalogos", force: true do |t|
    t.string "grupo"
  end

  create_table "grupos", force: true do |t|
    t.string   "grupo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institucions", force: true do |t|
    t.string "institucion"
  end

  create_table "justificacion_catalogos", force: true do |t|
    t.string "justificacion"
  end

  create_table "localidades_catalogos", force: true do |t|
    t.string "pais"
    t.string "latitud_pais"
    t.string "longitud_pais"
    t.string "estado"
    t.string "latitud_estado"
    t.string "longitud_estado"
    t.string "ciudad"
    t.string "latitud_ciudad"
    t.string "longitud_ciudad"
    t.string "zona"
  end

  create_table "mecanismo_origen_catalogos", force: true do |t|
    t.string "mec_origen"
  end

  create_table "moneda_catalogos", force: true do |t|
    t.string "moneda"
  end

  create_table "public_officers", force: true do |t|
    t.integer  "id_cargo"
    t.integer  "id_cargo_superior"
    t.string   "id_puesto"
    t.integer  "id_unidad_adm"
    t.integer  "id_institucion"
    t.integer  "id_tipo_personal"
    t.string   "nombre"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.string   "correo_electronico"
    t.decimal  "gastos_comprobados_total",   precision: 10, scale: 2, default: 0.0
    t.decimal  "gastos_sin_comprobar_total", precision: 10, scale: 2, default: 0.0
    t.decimal  "costo_total",                precision: 10, scale: 2, default: 0.0
    t.decimal  "viaticos_devueltos_total",   precision: 10, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "puestos", id: false, force: true do |t|
    t.string "id",     null: false
    t.string "puesto"
  end

  add_index "puestos", ["id"], name: "index_puestos_on_id", unique: true

  create_table "representacion_catalogos", force: true do |t|
    t.string "tp_representacion"
  end

  create_table "search_trips", force: true do |t|
    t.date    "inicio_fecha_rango"
    t.date    "fin_fecha_rango"
    t.decimal "rango_min_gasto",    precision: 10, scale: 2, default: 0.0
    t.decimal "rango_max_gasto",    precision: 10, scale: 2, default: 0.0
  end

  create_table "searches", force: true do |t|
    t.string  "nombre"
    t.string  "primer_ap"
    t.date    "segundo_ap"
    t.string  "puesto"
    t.decimal "min_gasto"
    t.decimal "max_gasto"
    t.date    "min_fecha"
    t.date    "max_fecha"
  end

  create_table "tema_de_viaje_catalogos", force: true do |t|
    t.string   "tema"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_comisions", force: true do |t|
    t.string "tipo_com"
  end

  create_table "tipo_pasaje_catalogos", force: true do |t|
    t.string "tipo_pasaje"
  end

  create_table "tipo_personals", force: true do |t|
    t.string "tipo_personal"
  end

  create_table "tipo_viaje_catalogos", force: true do |t|
    t.string "tipo_viaje"
  end

  create_table "trips", force: true do |t|
    t.integer  "localidad_origen"
    t.integer  "localidad_destino"
    t.integer  "tipo_viaje"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "commission_id"
    t.string   "pais"
    t.string   "estado"
    t.string   "ciudad"
    t.string   "pais_d"
    t.string   "estado_d"
    t.string   "ciudad_d"
  end

  create_table "tviaje_cats", force: true do |t|
    t.string "tema"
  end

  create_table "unidad_adms", force: true do |t|
    t.string "unidad_adm"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "public_officer_id",                   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "viatico_catalogos", force: true do |t|
    t.string  "id_puesto"
    t.integer "id_tpviaje"
    t.string  "zona"
    t.decimal "tarifa_diaria"
    t.integer "id_moneda"
  end

end
