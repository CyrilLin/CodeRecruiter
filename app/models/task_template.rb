class TaskTemplate < ApplicationRecord
  belongs_to :phase_template
  has_one :language
end
