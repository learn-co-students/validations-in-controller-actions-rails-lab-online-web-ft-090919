class Author < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true #this is checking if the author has a name and if that name is uniqu to that author 
    validates :email, uniqueness: true # checking if the author email is uniq 
end
