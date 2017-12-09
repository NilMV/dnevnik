class Role < ApplicationRecord
  KINDS = %w[student custodian teacher administrator].freeze
  validates :kind, inclusion: { in: KINDS }
end
