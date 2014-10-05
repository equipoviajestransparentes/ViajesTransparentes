class SearchTrip < ActiveRecord::Base

  def trips
    @commissions ||= find_trips
  end
  
  private
  def find_trips
    commissions = Commission.order(:fechainicio_com)

    commissions = commissions.where("fechainicio_com >= ?", "#{inicio_fecha_rango}") if inicio_fecha_rango.present?

    commissions = commissions.where("fechainicio_com <= ?", "#{fin_fecha_rango}") if fin_fecha_rango.present?

    commissions
  end
end