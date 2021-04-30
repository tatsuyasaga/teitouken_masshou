class ApplicationDatumOtherPartyLandBuilding
  include ActiveModel::Model
  include ActiveRecord::AttributeAssignment

  attr_accessor :reason_date, :reason, :receipt_number, :catalog_number, :other_party_address, :other_party_name, :other_party_ceo,
                :other_party_number, :application_date, :destination_id, :branch_destination_id, :land_prefecture_id, :land_city, :land_number, :land_branch_number,
                :type_id, :acreage, :building_prefecture_id, :building_city, :building_number, :building_branch_number, :use_id, :construction, :floor_space, :tax, :user_id

  with_options presence: true do
    validates :reason_date
    validates :reason
    validates :receipt_number
    validates :destination_id, numericality: {other_than: 1, message: "Select"}
    validates :branch_destination_id
    validates :tax, numericality: { only_integer: true, message: "Half-width number"}
    validates :other_party_address
    validates :other_party_name
    validates :other_party_ceo
    validates :other_party_number, numericality: { only_integer: true, less_than: 1000000000000, message: "Input only number"}
    validates :land_prefecture_id, numericality: { other_than: 1, message: "Select"}
    validates :land_city
    validates :land_number, numericality: { only_integer: true, message: "Half-width number"}
    validates :type_id, numericality: {other_than: 1, message: "Select"}
    validates :acreage 
    validates :building_prefecture_id, numericality: {other_than: 1, message: "Select"}
    validates :building_city
    validates :building_number, numericality: { only_integer: true, message: "Half-width number"}
    validates :use_id, numericality: {other_than: 1, message: "Select"}
    validates :construction
    validates :floor_space
  end

  validates :land_branch_number, numericality: { only_integer: true, message: "Half-width number"}, if: :land_branch_number_was_present?
  validates :building_branch_number, numericality: { only_integer: true, message: "Half-width number"}, if: :building_branch_number_was_present?

  def land_branch_number_was_present?
    land_branch_number.present?
  end

  def building_branch_number_was_present?
    building_branch_number.present?
  end

  def save
    application_datum = ApplicationDatum.create(reason_date: reason_date, reason: reason, receipt_number: receipt_number, catalog_number: catalog_number, application_date: application_date,
      user_id: user_id, destination_id: destination_id, branch_destination_id: branch_destination_id, tax: tax)
    
    OtherParty.create(address: other_party_address, name: other_party_name, ceo: other_party_ceo, number: other_party_number, application_datum_id: application_datum.id)

    Land.create(prefecture_id: land_prefecture_id, city: land_city, number: land_number, branch_number: land_branch_number, type_id: type_id, acreage: acreage, application_datum_id: application_datum.id)

    Building.create(prefecture_id: building_prefecture_id, city: building_city, number: building_number, branch_number: building_branch_number, use_id: use_id, construction: construction,
      floor_space: floor_space, application_datum_id: application_datum.id)
  end
end