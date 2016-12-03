class Wof::Game < ApplicationRecord
    has_one :player_1_link, -> { where position: 1 }, class_name: 'Wof::GamePlayer'
    has_one :player_2_link, -> { where position: 2 }, class_name: 'Wof::GamePlayer'
    has_one :player_3_link, -> { where position: 3 }, class_name: 'Wof::GamePlayer'
    has_one :player_1, through: :player_1_link, class_name: 'Access::User'
    has_one :player_2, through: :player_1_link, class_name: 'Access::User'
    has_one :player_3, through: :player_1_link, class_name: 'Access::User'
    accepts_nested_attributes_for :player_1_link
    accepts_nested_attributes_for :player_2_link
    accepts_nested_attributes_for :player_3_link
end
