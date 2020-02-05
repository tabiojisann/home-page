class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.text :text
      t.string :image
      t.string :name
      # t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
