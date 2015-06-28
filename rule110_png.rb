require 'chunky_png'

starting_row = "100010011011111000100110111110010011011111"
num_rows = 140
cell_scale = 6

@empty_color = ChunkyPNG::Color('red')
@alive_color = ChunkyPNG::Color('black')

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

def display_row(row, row_index, png, cell_scale)
  cell_scale.times do |j|
    row.each_with_index do |cell, index|
      cell_scale.times do |r|
        png[index * cell_scale + r, row_index * cell_scale + j] = cell == 0 ? @empty_color : @alive_color
      end
    end
  end
end

current_row = starting_row.chars.map(&:to_i)
png = ChunkyPNG::Image.new(starting_row.length * cell_scale, num_rows * cell_scale)

row_counter = 0
num_rows.times do
  display_row(current_row, row_counter, png, cell_scale)
  current_row = next_row(current_row)
  row_counter += 1
end

png.rotate_left.save('rule110.png', interlace: true)
