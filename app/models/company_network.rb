class CompanyNetwork < ApplicationRecord

  belongs_to :from_cid, class_name: 'Company', foreign_key: :from_cid
  belongs_to :to_uid, class_name: 'User', foreign_key: :to_uid

end
