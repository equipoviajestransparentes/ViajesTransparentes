class PublicOfficer < ActiveRecord::Base
	has_many :commissions

	def desc_cargo
		Cargo.find(id_cargo).cargo
	end

	def desc_cargo_superior
		Cargo.find(id_cargo_superior).cargo
	end

	def desc_unidad_adm
		UnidadAdm.find(id_unidad_adm).unidad_adm
	end

	def desc_institucion
		Institucion.find(id_institucion).institucion
	end

	def desc_tipo_personal
		TipoPersonal.find(id_tipo_personal).tipo_personal
	end

	def full_name
		nombre + ' ' + ap_paterno + ' ' + ap_materno
	end
	
end
