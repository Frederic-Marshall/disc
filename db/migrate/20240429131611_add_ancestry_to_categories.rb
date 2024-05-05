# frozen_string_literal: true

class AddAncestryToCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :ancestry, :string
  end
end
