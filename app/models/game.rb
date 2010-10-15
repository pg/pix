class Game < ActiveRecord::Base
  validates_presence_of :home, :away
  validates_numericality_of :score_q1_home, :score_q1_away, :score_q2_home, :score_q2_away, :score_q3_home, :score_q3_away, :score_q4_home, :score_q4_away, :current_quarter
  
  validate :scores_not_negative
  validate :current_quarter_not_negative
  validate :no_self_matches
  
  def self.find_live_games
    find(:all)
  end
  
  protected
    def scores_not_negative
      errors.add(:score_q1_home, 'should not be negative') if score_q1_home.nil? || score_q1_home < 0
      errors.add(:score_q1_away, 'should not be negative') if score_q1_away.nil? || score_q1_away < 0
      errors.add(:score_q2_home, 'should not be negative') if score_q2_home.nil? || score_q2_home < 0
      errors.add(:score_q2_away, 'should not be negative') if score_q2_away.nil? || score_q2_away < 0
      errors.add(:score_q3_home, 'should not be negative') if score_q3_home.nil? || score_q3_home < 0
      errors.add(:score_q3_away, 'should not be negative') if score_q3_away.nil? || score_q3_away < 0
      errors.add(:score_q4_home, 'should not be negative') if score_q4_home.nil? || score_q4_home < 0
      errors.add(:score_q4_away, 'should not be negative') if score_q4_away.nil? || score_q4_away < 0
    end
    
    def current_quarter_not_negative
      errors.add(:current_quarter, 'should not be negative') if current_quarter.nil? || current_quarter < 0
    end
    
    def no_self_matches
      errors.add(:home, 'cannot play self') if home.downcase == away.downcase
    end
    
end
