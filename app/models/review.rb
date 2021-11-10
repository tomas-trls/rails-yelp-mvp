# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true, allow_blank: false
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, in: 0..5
end
