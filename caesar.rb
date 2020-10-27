
def caesar_cipher(str, shift)
  str.chars.map(&:ord).map do |char|
    if char.between?(64,91)
      ((char +shift) -65 ) % 26 + 65
    elsif char.between?(96,123)
      ((char +shift) -97 ) % 26 + 97
    else
      char
    end
  end.map(&:chr).join
end

puts caesar_cipher("Testi joo ", 5)