class Network < ApplicationRecord
  belongs_to :from_uid, class_name: 'User', foreign_key: :from_uid
  belongs_to :to_uid, class_name: 'User', foreign_key: :to_uid


end