class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_presence_of :cocktail, :ingredient, :description
  validates :ingredient_id, uniqueness: [scope: :cocktail]
end
