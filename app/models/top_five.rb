class TopFive < ApplicationRecord
  belongs_to :user
  delegate :username, :name, :to => :user
end
