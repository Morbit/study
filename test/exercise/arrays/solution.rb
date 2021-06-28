module Exercise
  module Arrays
    class << self
      def find_max(arry)
        max_value = array.first
        arr.each do |value|
          max_value = value if value > max_value
        end
        max_value
      end

      def replace(array)
        max = find_max(array)
        result = []

        array.each do |value|
          if value.positive?
            result << max_value
          else
            result << value
          end
        end

        result
      end

      def search(array, search_element, index = 0)
        middle_index = (array.size / 2).round

        return -1 if array.empty? || array.size == 1 && array.first != search_element

        return index if array.first == search_element

        if search_element >= array[middle_index]
          right_side_of_array = array[middle_index, array.size] = array[middle_index, array.size]
          return search(right_side_of_array, search_element, index + middle_index)
        end

        left_side_of_array = array[0, middle_index]
        search(left_side_of_array, search_element, index)
      end
    end
  end
end
