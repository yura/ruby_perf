class MatrixMultiplicator
  def self.multiply(x, y)
    (0...x.size).map do |i|
      (0...y[0].size).map do |j|
         x[i].map.with_index do |col_x, k|
            col_x * y[k][j]
         end.sum
      end
    end
  end
end
