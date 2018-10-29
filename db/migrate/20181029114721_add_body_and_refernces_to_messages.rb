class AddBodyAndReferncesToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :body, :text
    add_reference :messages, :room, foreign_key: true
  end
end
