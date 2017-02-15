class ChangeInterviewModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :interviews, :candidate_id, :integer
    add_column :interviews, :candidate_token, :string
    add_column :interviews, :candidate_email, :string
    add_column :interviews, :candidate_name, :string
  end
end
