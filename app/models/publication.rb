class Publication < ApplicationRecord
    has_many :labels, dependent: :destroy
    has_one_attached :photo
    paginates_per 4

    validates :title, presence: true
    validates :description, presence: true
    validates :route, presence: true

    accepts_nested_attributes_for :labels,
    reject_if: proc { |attr| attr['contact'].blank? },
    allow_destroy: true

    def to_s
        title
        description
        route
    end
end