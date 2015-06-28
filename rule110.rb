@starting_row = "100010011011111000100110111110010011011111"

@rule110 = [0,1,1,1,0,1,1,0] #stored backwards

def apply_rule(left, middle, right)
  @rule110[left * 4 + middle * 2 + right]
end

def next_row(current_row)
  row = (1..(current_row.length - 2)).map do |cell|
    apply_rule(*current_row[cell-1..cell+1])
  end
  [current_row[0]] + row + [current_row[-1]]
end

def display_row(row)
  puts row.map{|i| i == 0 ? ' ' : '█'}.join('')
end

@current_row = @starting_row.chars.map(&:to_i)

140.times do
  display_row(@current_row)
  @current_row = next_row(@current_row)
end
