class Home < ActiveRecord::Base
  belongs_to :seller
  has_one :address, dependent: :destroy
  validates_presence_of :sq_ft, :bedroom, :bath, :year, :price, :garage, :pool

end