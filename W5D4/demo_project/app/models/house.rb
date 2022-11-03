class House < ApplicationRecord
    #validates :address, presence: true
    belongs_to(
        :person,
        optional: true,
        class_name: 'Person',
        foreign_key: :house_id,
        primary_key: :id
    )
end