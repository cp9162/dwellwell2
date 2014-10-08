class Chore
  include Mongoid::Document
  field :title, :type => String
  field :is_done, :type => Boolean
  field :assignment, :type => String
  field :completed_on, :type => Datetime
  field :timestamps

  # do we need a separate timestamp

  has_many_belongs_to_many :users
  # see http://stackoverflow.com/questions/7000605/how-to-implement-has-many-through-relationships-with-mongoid-and-mongodb
  # belongs_to :user, through :house
  # has_many :user, thrugh :house ?

  # add validations
end