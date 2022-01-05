class Training < ApplicationRecord
  has_many :likes, dependent: :destroy
end
