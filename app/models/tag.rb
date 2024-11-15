class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :taggables, through: :taggings, source: :taggable, source_type: "Article"  # Replace 'Article' with your desired model if needed
end
