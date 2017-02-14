class InterviewTask < ApplicationRecord
  belongs_to :interview_phase
  has_one :language
end
