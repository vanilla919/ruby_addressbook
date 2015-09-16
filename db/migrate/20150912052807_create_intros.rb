class CreateIntros < ActiveRecord::Migration
  def change
    create_table :intros do |t|
      t.string :name
      t.string :sex
      t.string :tel
      t.string :email
      t.string :position
      t.text :info
      t.string :photo

      t.timestamps null: false
    end
  end
end
