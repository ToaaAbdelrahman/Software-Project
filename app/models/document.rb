class Document < ActiveRecord::Base
has_many :lectures, dependent: :delete_all
end
