class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_presence_of :cocktail, :ingredient, :description
  validates :cocktail, uniqueness: { scope: [:ingredient_id, :cocktail_id] }
end
