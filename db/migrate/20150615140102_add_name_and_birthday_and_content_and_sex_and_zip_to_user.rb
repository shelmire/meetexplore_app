class AddNameAndBirthdayAndContentAndSexAndZipToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :date
    add_column :users, :content, :text
    add_column :users, :sex, :string
    add_column :users, :zip_code, :string
  end
end
