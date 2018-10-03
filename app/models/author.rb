class Author < ActiveRecord::Base
  include ActiveModel::Validations
    validates :name, presence: true
    validates :email, uniqueness: {:case_sensitive => false}
    validates :phone_number, :phone_number => {:ten_digits => true}
end