class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.datetime :date
      t.string :home
      t.string :away
      t.integer :score_q1_home
      t.integer :score_q1_away
      t.integer :score_q2_home
      t.integer :score_q2_away
      t.integer :score_q3_home
      t.integer :score_q3_away
      t.integer :score_q4_home
      t.integer :score_q4_away
      t.integer :current_quarter
      t.time :time

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
