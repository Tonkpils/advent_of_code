input = File.open("day5input.txt")

class NaughtyOrNice
  def initialize(str)
    @str = str
  end

  def naughty?
    !nice?
  end

  def nice?
    has_three_vowels? &&
      has_two_same_continuous_letters? &&
      !has_naughty_strings?
  end

  private

  def has_three_vowels?
    @str.count("aeiou") >= 3
  end

  def has_two_same_continuous_letters?
    @str.chars.each_with_index do |ch, idx|
      return true if ch == @str[idx + 1]
    end

    false
  end

  NAUGHTY_STRINGS = %w(ab cd pq xy)

  def has_naughty_strings?
    NAUGHTY_STRINGS.any? { |s| @str.include?(s) }
  end
end

count = 0

input.each_line do |str|
  non = NaughtyOrNice.new(str)
  count += 1 if non.nice?
end
puts "There are #{count} nice strings."
