class Movie < ApplicationRecord
    validates :title, :description, presence: true
    # validates :time, :theatre_room, :price
    validates :title, uniqueness: true
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
