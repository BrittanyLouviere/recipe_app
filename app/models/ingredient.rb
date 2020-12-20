class Ingredient < ApplicationRecord
    before_validation {name.strip! unless self.name.nil?}
    validates :name, presence: true, length: { maximum: 255 }, uniqueness: true
end
