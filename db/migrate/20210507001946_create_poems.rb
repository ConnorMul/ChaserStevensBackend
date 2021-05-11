class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :content
      t.string :date

      t.timestamps
    end
  end
end
