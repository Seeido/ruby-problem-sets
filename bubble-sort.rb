# Link explaining what Bubble Sort is
# https://www.youtube.com/watch?v=8Kp-8OGwphY&ab_channel=CS50

def bubble_sort(arr)
    got_sorted = false
    while got_sorted == false
        already_sorted = true #'already_sorted' flag to increase efficieny instead of looping certain number of times
        arr.each_with_index do |value, index|
            break if arr.size - 1 == index #break if it's on the last element of the array since arr[index + 1] would be nil at this point
            current_value = arr[index]
            next_value = arr[index + 1]
            #Switch places if needed
            if current_value > next_value then
                arr[index] = next_value
                arr[index + 1] = current_value

                already_sorted = false #change 'already_sorted' value if a switch happened
            end
        end
        if already_sorted then got_sorted = true end #if no switches happened then it's sorted
    end
    arr
end