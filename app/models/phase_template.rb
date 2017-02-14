class PhaseTemplate < ApplicationRecord
  has_many :task_templates, dependent: :destroy
end
