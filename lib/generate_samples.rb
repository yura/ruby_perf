SAMPLES_COUNT = 100_000
MATRIX_SIZE = 10

def rand_matrix
  MATRIX_SIZE.times.map { rand_array }
end

def rand_array
  MATRIX_SIZE.times.map { rand(100) }
end

File.open('lib/samples.rb', 'w') do |file|
  result = SAMPLES_COUNT.times.map { [ rand_matrix, rand_matrix ] }
  file.write("def samples; #{result.to_s}; end")
end
