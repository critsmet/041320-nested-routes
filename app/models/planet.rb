class Planet < ApplicationRecord
  has_many :alien_groups, dependent: :destroy
end
