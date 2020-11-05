class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, index: :true,  null: false, foreign_key: {to_table: :users, on_delete: :cascade}
      t.string :title
      t.timestamps
    end
  end
end
