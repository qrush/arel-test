class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :state
end
