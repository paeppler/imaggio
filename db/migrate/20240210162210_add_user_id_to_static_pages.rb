class AddUserIdToStaticPages < ActiveRecord::Migration[7.1]
  def change
    add_column :static_pages, :user_id, :text
  end
end
