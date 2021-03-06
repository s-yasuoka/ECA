class CreateIntakes < ActiveRecord::Migration[6.1]
  def change
    create_table :intakes do |t|
      t.integer :user_id, null: false
      t.string :menu_name, null: false
      t.integer :status, null: false
      t.date :start_time, null: false
      t.text :memo
      t.integer :point, default: "1"
      t.timestamps
    end
  end
end
