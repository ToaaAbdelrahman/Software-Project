class Slide < ActiveRecord::Base
 belongs_to :document
acts_as_commentable
end
