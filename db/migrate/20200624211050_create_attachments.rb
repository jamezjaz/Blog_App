class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.references :post_id, foreign_key: true
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
