class CreateInterviews < ActiveRecord::Migration[5.0]
  def change
    create_table :interviews do |t|
      t.integer :interviewer_id
      t.integer :candidate_id
      t.integer :stats
      t.text :comment
      t.integer :rank

      t.timestamps
    end

    create_table :interview_phases do |t|
      t.belongs_to :interview
      t.string :title
      t.text :description
      t.integer :stats
      t.integer :rank
      t.boolean :live_interview
      t.string :live_token

      t.timestamps
    end

    create_table :interview_tasks do |t|
      t.belongs_to :interview_phase
      t.string :title
      t.text :description
      t.text :code
      t.text :test_case
      t.text :instruction
      t.references :languages
      t.integer :time_limit

      t.integer :exec_times
      t.integer :failed_times
      t.integer :finish_time

      t.timestamps
    end

    create_table :phase_templates do |t|
      t.string :title
      t.text :description
      t.integer :author_id
      t.string :image_url
      t.integer :stars
      t.boolean :public

      t.timestamps
    end

    create_table :task_templates do |t|
      t.belongs_to :phase_template
      t.string :title
      t.text :description
      t.text :code
      t.text :test_case
      t.text :instruction
      t.references :languages
      t.integer :time_limit

      t.timestamps
    end

    create_table :languages do |t|
      t.string :name
      t.text :description
      t.string :run_time
      t.text :exec_command
    end
  end
end
