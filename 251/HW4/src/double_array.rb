class DoubleArray

  attr_accessor :array, :last

  def initialize(n)
    self.array = Array.new
    (0..(n-1)).each do |i|
      self.array[i] = []
      (0..(n-1)).each do |j|
        if i-1 >= 0 && j-1 >= 0
          self.array[i][j] = [self.array[i-1][j], self.array[i][j-1]].max + rand(max = 10)
        elsif i-1 >= 0
          self.array[i][j] = self.array[i-1][j] + rand(max = 10)
        elsif j-1 >= 0
          self.array[i][j] = self.array[i][j-1] + rand(max = 10)
        else
          #puts self.array[i][j]
          self.array[i][j] = rand(max = 10)
        end
      end
    end
 end

  def print_array
    self.array.each do |e|
      e.each do |f|
        printf "%-4s ", f
      end
      puts "\n"
    end
    true
  end

  def brute_search(n)
    self.array.each do |i|
      #puts "searching i: #{i}"
      i.each do |j|
        #puts "searching j: #{j}"
        if n == j
          return true
        end
      end
    end
    false
  end

  # aliases
  def p
    print_array
  end

  def bs(n)
    brute_search(n)
  end

  def cv
    self.visited_points = []
  end


  def quarter_find(n, start_row, rows, start_col, cols)
    i = start_row + rows/2
    j = start_col + cols/2

    puts "\ni is #{i} j is #{j} array element is #{self.array[i][j]}"
    puts "start row is #{start_row} start col is #{start_col}"
    puts "rows is #{rows} cols is #{cols}"

    return false if i < 0 || j < 0

    if self.array[i][j] == n
      puts "Found at row #{i} column #{j}"
      return true
    elsif rows <= 1 && cols <= 1
      return false
    end

    if rows == 0
      cols.times do |col|
        return true if self.array[i][j + col -1]
      end
    elsif cols == 0
      rows.times do |row|
        return true if self.array[i + row - 1][j]
      end
    elsif self.array[i][j] > n
      puts "Beginning to sort less"
      return true if quarter_find(n, start_row, i - 1, start_col, j - 1)
      return true if quarter_find(n, i, rows - i, start_col, j)
      return true if quarter_find(n, start_row, i, j, cols - j)
    else
      puts "Beginning to sort greater"
      return true if quarter_find(n, i + 1, rows - i - 1, j + 1, cols - j - 1)
      return true if quarter_find(n, i + 1, rows - i, start_col, j)
      return true if quarter_find(n, start_row, i, j + 1, cols - j)
    end

    return false

  end

  def qs(n, start_row=0, rows=self.array.length, start_col=0, cols=self.array[0].length)
    if n < self.array[0][0] || n > self.array[rows - 1][cols - 1]
      return false
    end

    quarter_find(n, start_row, rows, start_col, cols)
  end
end