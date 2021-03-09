class Article < ApplicationRecord
    has_many: :category
    validates_presence_of: :title, :content
    scope :alphabetical, -> { order('title') }
    scope :active, -> { where('active = ?', true) }
end
