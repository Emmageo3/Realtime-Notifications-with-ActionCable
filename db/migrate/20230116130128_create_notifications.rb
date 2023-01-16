class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.integer :recipient_id
      t.references :user, null: false, foreign_key: true
      t.string :action
      t.string :notifiable_type
      t.string :notifiable_id
      t.string :integer

      t.timestamps
    end
  end
end
