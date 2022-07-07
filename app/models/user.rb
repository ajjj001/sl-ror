class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :firstName, type: String
  field :lastName, type: String
  field :age, type: Integer
  field :gender, type: String
  field :address, type: Hash

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :gender, inclusion: { in: ["male", "female", "others"] }

  has_one :shop, dependent: :destroy
end
