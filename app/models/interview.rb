class Interview < ApplicationRecord
  belongs_to :interviewer, class_name: 'User'
  belongs_to :candidate, class_name: 'User'

  has_many :interview_phases, dependent: :destroy
end
