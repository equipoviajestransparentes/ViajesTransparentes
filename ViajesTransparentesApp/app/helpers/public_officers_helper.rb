module PublicOfficersHelper
	def generar_link (public_officer_id, commission_id, trip_id, detail_id, evento)
		(link_to evento, public_officer_commission_trip_detail_path(public_officer_id, commission_id, trip_id, detail_id)).gsub("\"", "'")
	end
end
