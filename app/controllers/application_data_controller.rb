class ApplicationDataController < ApplicationController
  def index
  end

  def new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @application_datum_other_party_land_building = ApplicationDatumOtherPartyLandBuilding.new
  end

  def create
    @application_datum_other_party_land_building = ApplicationDatumOtherPartyLandBuilding.new(application_datum_params)
    @applicant = User.find(@application_datum_other_party_land_building.user_id)
    @destination = Destination.find(@application_datum_other_party_land_building.destination_id)
    @type = Type.find(@application_datum_other_party_land_building.type_id)
    @use = Use.find(@application_datum_other_party_land_building.use_id)
    if @application_datum_other_party_land_building.valid?
      @application_datum_other_party_land_building.save
    else
      render :new
    end
  end

  private

  def application_datum_params
    params.require(:application_datum_other_party_land_building).permit(:reason_date, :reason, :receipt_number, :catalog_number, :other_party_address, :other_party_name, :other_party_ceo,
                   :other_party_number, :application_date, :destination_id, :land_prefecture_id, :land_city, :land_number, :land_branch_number, :type_id, :acreage, :building_prefecture_id,
                   :building_city, :building_number, :building_branch_number, :use_id, :construction, :floor_space, :tax).merge(user_id: current_user.id)
  end

end
