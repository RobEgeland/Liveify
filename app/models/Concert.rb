class Concert < ActiveRecord::Base
    belongs_to :user
    belongs_to :artist 

    validates :name, :artist_id, :user_id, presence: true 
end