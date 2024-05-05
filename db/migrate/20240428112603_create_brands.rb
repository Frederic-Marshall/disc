class CreateBrands < ActiveRecord::Migration[7.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :byname

      t.timestamps
    end
  end
end
