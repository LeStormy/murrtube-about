class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks, id: :uuid do |t|
      t.text :body
      t.string :name
      t.string :telegram_username
      
      t.timestamps
    end
  end
end
