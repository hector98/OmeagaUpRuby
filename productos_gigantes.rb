class ProductosGigantes
  def problem(x, y)
    return x * y
  end
end

nums = gets.chomp.split(" ").map { |n| n.to_i }
if nums.length == 1
  nums << gets.chomp.to_i
end

prod = ProductosGigantes.new
puts prod.problem(nums[0], nums[1])
