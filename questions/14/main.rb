# require 'benchmark'

# module Q00
#   module_function

#   def run
#     'answer'
#   end
# end

# Benchmark.bm do |x|
#   x.report do
#     $answer = Q00.run
#   end
# end

# puts
# puts "answer : #{$answer}"

# 開催国の設定

@holding_country = ["Brazil", 'Cameroon', 'Chile', 'Greece', 'Uruguay', 'Italy', 'France', 'BosniaAndHerzegovina', 'Germany', 'USA', 'Russia', 'Croatia', 'Spain', 'Australia', 'CoteDlvoire', 'CostaRica', 'Switzerland', 'Honduras', 'Iran', 'Portugal', 'Belgium', 'KoreaPublic', 'Mexico', 'Neitherlands', 'Colombia', 'Japan', 'England', 'Ecuador', 'Argentina', 'Nigeria', 'Ghana', 'Algeria' ]

# 開催国を大文字にしたものを配列に
u_country = []
@holding_country.each do |countory|
  u_country << countory.upcase!
end


# カメルーンを仮に設定
p word =  u_country[1] # CAMEROON

# 文字列の最後を求めるために長さを調べる
p word.length # 8

# 最後の文字を代入する
p last = word[word.length - 1] # N


# # 最後の文字とマッチする単語を検索
# holding_country.each do |m_word|
#   if m_word[0] == last
#     p m_word # Neitherlands
#     p kai = m_word[m_word.length - 1] # s
#     # if kai == m_word[0]
#     #   p m_word
#     # end
#   end
# end

def matchCountry(last)
  @holding_country.each do |m_word|
    p m_word
    if m_word[0] == last
      p m_word # Neitherlands
      p kai = m_word[m_word.length - 1] # s
      p last = kai # S
    end
  end
end

@holding_country.each do |m_word|
  p m_word
    if m_word[0] == last
      p m_word # Neitherlands
      p kai = m_word[m_word.length - 1] # s
      p last = kai.upcase # S
    end
    matchCountry(last)
end
