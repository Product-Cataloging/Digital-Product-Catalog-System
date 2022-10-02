class Package < ApplicationRecord
    validates :total_piece, :general_weight, :price ,presence: true
    validates :general_weight, :price , numericality:{only_float: true}
    validates :total_piece, numericality:{only_integer: true}
end
