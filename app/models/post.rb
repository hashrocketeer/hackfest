class Post < ActiveRecord::Base
  validates :title, :author, :caption, :image, presence: true
end
