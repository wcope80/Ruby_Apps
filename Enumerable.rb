module Enumerable
	def my_each
		return self unless block_given?
		for i in self
			yield(i)
		end
	end
	
	def my_each_with_index 
		return self unless block_given?
		index = 0
		for i in self
			yield(i, index)
			index += 1
		end
	end
	
	def my_select
	
	end
	
	def my_all?
	
	end
	
	def my_any?
	
	end
	
	def my_none?
	
	end
	
	def my_count
	
	end
	
	def my_map
	
	end
	
	def my_inject
	
	end

	def multiply_els(arr)
		arr.my_inject
	end
	
	
	
	
end