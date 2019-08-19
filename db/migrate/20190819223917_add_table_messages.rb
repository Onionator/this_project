class AddTableMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :username
      t.text :content
      t.belongs_to :board, index: true, foreign_key: true
    end
  end
end
