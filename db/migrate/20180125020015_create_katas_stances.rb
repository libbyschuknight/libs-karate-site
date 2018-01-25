class CreateKatasStances < ActiveRecord::Migration
  def change
    create_table :katas_stances do |t|
      t.integer :kata_id
      t.integer :stance_id

      t.timestamps null: false
    end
  end
end
