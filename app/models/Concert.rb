class Concert < ActiveRecord::Base
    belongs_to :user
    belongs_to :artist 

    validates :name, presence: true 
end