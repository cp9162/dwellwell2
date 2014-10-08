class Chore
  include Mongoid::Document
  field :title, type: String
  field :status, type: Boolean
  field :assignment, type: String

  # add validations
  belongs_to :user, through :house
end