class Artist < ActiveRecord::Base
    has_many :concerts
    has_many :users, through: :concerts

    accepts_nested_attributes_for :concerts
end