class CreateTextShouts < ActiveRecord::Migration[5.2]
  def change
    create_table :text_shouts do |t|
      t.string :body, null: false, presence: true 
      t.timestamps
    end
  end
end
