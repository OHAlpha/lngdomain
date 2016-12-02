class Access::User::Color < ApplicationRecord
  belongs_to :user, class_name: 'Access::User'
end
