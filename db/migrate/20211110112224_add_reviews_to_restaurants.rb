# frozen_string_literal: true

class AddReviewsToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :restaurant, null: false, foreign_key: true
  end
end
