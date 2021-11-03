class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :Item_name
      t.numeric :Item_price

      t.timestamps
    end
  end
end
