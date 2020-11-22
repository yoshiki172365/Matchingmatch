class Category < ApplicationRecord
  has_many :apps
  has_ancestry
end
