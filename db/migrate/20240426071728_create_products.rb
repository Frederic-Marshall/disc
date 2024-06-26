# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :bytitle, null: false
      t.string :description, null: false
      t.decimal :old_price, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
