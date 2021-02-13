class App < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites,dependent: :destroy

  def self.search(search)
    if search != ""
      App.where('name LIKE? OR pr LIKE?', "%#{search}%","%#{search}%")
    else
      App.all
    end
  end

end
