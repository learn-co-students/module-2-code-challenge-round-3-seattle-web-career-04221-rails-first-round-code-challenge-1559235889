class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet
    validates :price, presence: true, allow_blank: false
    validates :price, :numericality => { :greater_than_or_equal_to => 0 }
end
