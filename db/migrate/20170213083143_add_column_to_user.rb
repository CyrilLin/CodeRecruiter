class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :nick_name, :string
    add_column :users, :avatar_url, :string
    add_column :users, :company_name, :string
    add_column :users, :job_title, :string
    add_column :users, :phone_number, :string

    add_index :users, :name
  end
end
