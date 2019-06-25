# frozen_string_literal: true

class Order < ApplicationRecord
  enum status: %i[Pending Ordered Closed Completed]
  belongs_to :user
  before_create :set_order_status
  before_save :update_subtotal

  has_many :order_items, dependent: :destroy

  validates :address, presence: true, length: { maximum: 150 }
  validates :phone_number, presence: true, length: { minimum: 10 }
  validates :full_name, presence: true, length: { maximum: 50 }

  private
  def update_subtotal
    self[:subtotal] = order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.product.price) : 0 }.sum
  end

  def set_order_status
    self[:status] = :Ordered
  end
  def destroyable
    created_at + 2.hours < Time.current
   end
end
