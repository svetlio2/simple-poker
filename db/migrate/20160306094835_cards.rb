class Card < ActiveRecord::Base
  NUMBER_RANGE = (2..14).freeze

  validates :color, uniqueness: { scope: [:number] }
  validates :number, inclusion: NUMBER_RANGE

  enum color: {spade: 'spade', club: 'club', heart: 'heart', diamond: 'diamond'}.freeze
end

class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :color, null: false
      t.integer :number, null: false
    end

    reversible do |direction|
      direction.up { create_deck }
    end
  end

  def create_deck
    Card::NUMBER_RANGE.each do |number|
      Card.colors.each_value do |color|
        Card.create(number: number, color: color)
      end
    end
  end
end
