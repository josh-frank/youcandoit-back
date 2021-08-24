class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :content
      t.boolean :finished, default: false

      t.timestamps
    end
  end
end
