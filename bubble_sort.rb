def bubble_sort(arr)
sorted = false
	while sorted == false
		sorted=true
		arr.each_with_index do |a, i| 
			if i < arr.size - 1
				if arr[i] > arr[i+1] 	
					arr[i], arr[i+1] =  arr[i+1], arr[i]
					sorted = false
				end
			end
		end
	end
print arr
end



bubble_sort([8,4,2,3,6,7,3,4,5,6,99,1,3,9])

def bubble_sort_by(arr) do |l,r|
	if l <=> r = -1
		l, r = r, l
	end
end

