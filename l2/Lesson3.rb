alphabet = ('a'..'z')
vowels = {}

alphabet.each_with_index do |key, index|
  vowels[key] = index + 1 if %w(a e o u i).include?(key)
end

puts vowels