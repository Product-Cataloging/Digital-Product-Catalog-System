class UnitOfMeasure < ApplicationRecord
    validates :name, :abbreviation , presence: true
end
