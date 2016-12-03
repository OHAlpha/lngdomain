class Wof::GamePlayer < ApplicationRecord
  belongs_to :game
  belongs_to :user, class_name: 'Access::User', optional: true
end
