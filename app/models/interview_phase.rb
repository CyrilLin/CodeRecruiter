class InterviewPhase < ApplicationRecord
  belongs_to :interview
  has_many :interview_tasks, dependent: :destroy
end
