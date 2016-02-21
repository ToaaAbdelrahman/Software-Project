class Comment < ActiveRecord::Base
module Commentator
  
    belongs_to :commentable, polymorphic: true
    belongs_to :owner, class_name: Commentator.owner_class
    belongs_to :slide, class_name: 'Comment'

    has_many :replies, foreign_key: :slideNumber,
      class_name: 'Comment', dependent: :destroy

    default_scope order(:created_at)

    scope :base, where(slideNumber: nil)
  end

end
