class Ingredient < ApplicationRecord

  # has_many :menus, through: :menu_ingredients
  # has_many :menu_ingredients, dependent: :destroy
  has_many :nutrients, through: :ingredient_nutrients
  has_many :ingredient_nutrients, dependent: :destroy

  has_many :intake_ingredients, dependent: :destroy
  has_many :intakes, through: :intake_ingredients

  validates :name, uniqueness: true
end
