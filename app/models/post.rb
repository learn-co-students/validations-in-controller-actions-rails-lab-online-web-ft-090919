class Post < ActiveRecord::Base
    validates :title, presence: true #checking if the post has a title 
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) } #this is checking if the post includes a category and if that category is fic or non fic
    validates :content, length: { minimum: 100 } #checking if the post is atleast 100 char long 
end
