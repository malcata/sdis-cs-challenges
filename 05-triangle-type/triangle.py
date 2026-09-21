# Return a string representing the type of triangle (equilateral, isosceles and scalene) 
# from a list of 3 side lengths, that can be formed, or "none" if it cannot form a triangle.

def triangle_type(nums: List[int]) -> str:
	# add code here
	print(nums)
	return "equilateral"

# run tests
print(triangle_type([3,3,3]))
print(triangle_type([3,4,5]))

