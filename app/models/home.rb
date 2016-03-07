class Home < ActiveRecord::Base
  belongs_to :seller
  has_one :address, dependent: :destroy
  validates_presence_of :title, :sq_ft, :bedroom, :bath, :year, :price

end