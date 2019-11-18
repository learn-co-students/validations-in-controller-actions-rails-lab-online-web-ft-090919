class Post < ActiveRecord::Base
    validates :title, presence: { message: "Title can't be blank" }
    validates :content, length: { minimum: 100, message: "Content too short" }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "Category must be either Fiction or Non-Fiction" }
end
