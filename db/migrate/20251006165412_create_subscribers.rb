class CreateSubscribers < ActiveRecord::Migration[8.0]
  def change
    unless table_exists?(:subscribers)
      create_table :subscribers do |t|
        t.belongs_to :product, null: false, foreign_key: true
        t.string :email

        t.timestamps
      end
    end
  end
end
