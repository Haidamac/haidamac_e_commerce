# frozen_string_literal: true

class AddOrderIdToLineItems < ActiveRecord::Migration[7.0]
  def change
    add_column :line_items, :order_id, :bigint
  end
end
