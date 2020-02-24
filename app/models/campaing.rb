class Campaing < ApplicationRecord
  belongs_to :staff
  default_scope -> { order(created_at: :desc) }
end
