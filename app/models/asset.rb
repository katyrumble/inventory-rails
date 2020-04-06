class Asset < ApplicationRecord
  belongs_to :category
  belongs_to :model
  belongs_to :location
end
