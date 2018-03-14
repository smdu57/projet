class CreateStudenttests < ActiveRecord::Migration
  def change
    create_table :studenttests do |t|
      t.string :name
      t.string :lastname
      t.date :birthday

      t.timestamps null: false
    end
  end
end
