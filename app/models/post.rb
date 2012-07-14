class Post < ActiveRecord::Base
  attr_accessible :title, :content
  
  validates :title, :content, :presence => true
  validates :title, :length => { :minimum => 2, :message => "is too short. Must be more than 2 characters"}
  validates :title, :uniqueness => { :message => "already taken" }
end
