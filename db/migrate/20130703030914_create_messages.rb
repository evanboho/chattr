class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :text
      t.string :sender
      t.string :color

      t.timestamps
    end
  end
end
