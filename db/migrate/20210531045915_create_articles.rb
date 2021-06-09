class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title, default: ''
      t.text :body, default: ''

      t.timestamps
    end
  end
end
