class Access::User < ApplicationRecord
    has_one :pcol, -> { where ctyp: 'primary' }, class_name: 'Access::User::Color'
    has_one :scol, -> { where ctyp: 'secondary' }, class_name: 'Access::User::Color'
    has_one :tcol, -> { where ctyp: 'tertiary' }, class_name: 'Access::User::Color'
    accepts_nested_attributes_for :pcol
    accepts_nested_attributes_for :scol
    accepts_nested_attributes_for :tcol
    
    def self.hmac_key
        'HMacKey'
    end
    
end
