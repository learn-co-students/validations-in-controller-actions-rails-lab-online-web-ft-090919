class Author < ActiveRecord::Base
    validates :name, presence: { message: "Name can't be blank" }
    validates :email, uniqueness: { message: "Email has already been taken" }
end
