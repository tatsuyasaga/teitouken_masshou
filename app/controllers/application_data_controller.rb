class ApplicationDataController < ApplicationController
  require "wareki"
  require "date"
  before_action :authenticate_user!, except: [:index, :operator_info]

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
      wareki_reason_date
      wareki_application_date
      @application_datum_other_party_land_building.save
    else
      render :new
    end
  end

  def operator_info
  end

  private

  def application_datum_params
    params.require(:application_datum_other_party_land_building).permit(:reason_date, :reason, :receipt_number, :catalog_number, :other_party_address, :other_party_name, :other_party_ceo,
                   :other_party_number, :application_date, :destination_id, :land_prefecture_id, :land_city, :land_number, :land_branch_number, :type_id, :acreage, :building_prefecture_id,
                   :building_city, :building_number, :building_branch_number, :use_id, :construction, :floor_space, :tax).merge(user_id: current_user.id)
  end

  def wareki_reason_date
    reason_date = @application_datum_other_party_land_building.reason_date
    year = reason_date[1]
    month = reason_date[2]
    day = reason_date[3]
    reason_date = "#{year}-#{month}-#{day}"
    @reason_date = Date.parse(reason_date)
  end

  def wareki_application_date
    if @application_datum_other_party_land_building.application_date.present?
      application_date = @application_datum_other_party_land_building.application_date
      @application_date = Date.parse(application_date)
    end
  end
end
