class Campaign < ApplicationRecord
  validates :title, :gm_id, presence: true

  belongs_to :gm,
    class_name: :User,
    foreign_key: :gm_id,
    primary_key: :id

  has_many :active_memberships,
    -> { where pending: false},
    class_name: :Membership,
    foreign_key: :campaign_id,
    primary_key: :id

  has_many :pending_memberships,
    -> { where pending: true},
    class_name: :Membership,
    foreign_key: :campaign_id,
    primary_key: :id

  has_many :active_players,
    through: :active_memberships,
    source: :player

  has_many :pending_players,
    through: :pending_memberships,
    source: :player
end
