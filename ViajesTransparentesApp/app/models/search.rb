class Search < ActiveRecord::Base
  def public_officers
    @public_officers ||= find_public_officers
  end
  
private


  def find_public_officers
    public_officers = PublicOfficer.order(:nombre)
    public_officers = public_officers.where("nombre like ?", "%#{nombre}%") if nombre.present?

	public_officers = public_officers.where("ap_paterno like ?", "%#{primer_ap}%") if primer_ap.present?

    public_officers
  end
end
