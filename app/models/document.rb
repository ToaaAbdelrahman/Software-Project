class Document < ActiveRecord::Base
has_many :slides, dependent: :delete_all
end
