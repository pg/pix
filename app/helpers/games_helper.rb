require 'hpricot'
require 'open-uri'

module GamesHelper
  def update_games
    doc = open("http://rivals.yahoo.com/ncaa/football/scoreboard") { |f| Hpricot(f) }
    elements = doc.search("//div[@class='ysp-dynamic']")
  end
  
end
