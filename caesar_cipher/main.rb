def caesar_cipher(code_word, shift, mode = 'e') 
  code_array = code_word.split("")
  shift = (mode == 'd') ? -shift : shift
  encoded_array = code_array.map do |char|
    next char unless ('A'..'Z').include?(char) || ('a'..'z').include?(char) 
    char_num = char.ord
    base = ('A'..'Z').include?(char) ? 65 : 97

    encoded_char = (char_num - base + shift) % 26 + base
    encoded_char.chr
  end
  encoded_array.join("")
end 

puts "Enter the message: "
code_word = gets.chomp

puts "Enter the shift: "
shift = gets.chomp.to_i

mode = ""
loop do
  puts "Enter the mode('e' => encode, 'd' => decode) : "
  mode = gets.chomp

  break if mode == 'e' || mode == 'd'
end

puts caesar_cipher(code_word, shift, mode)
