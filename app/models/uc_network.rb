class UcNetwork < ApplicationRecord

  belongs_to :from_uid, class_name: 'User', foreign_key: :from_uid
  belongs_to :to_cid, class_name: 'Company', foreign_key: :to_cid

end
