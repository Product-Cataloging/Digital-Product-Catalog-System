class Currency < ApplicationRecord
    validates :name,:aliass, presence:true
    
end