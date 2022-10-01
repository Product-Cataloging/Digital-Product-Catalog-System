class Currency < ApplicationRecord
    validates :name,:alias, presence:true
    
end