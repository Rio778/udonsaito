class Like < ApplicationRecord

    belongs_to :user
    belongs_to :udon

    validates_uniqueness_of :udon_id, scope: :user_id

end
