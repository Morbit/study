module Exercise
  module Arrays
    class << self
      def find_max(arr)
        max = arr[0]
        arr.each do |i|
          max = i if i > max
        end
        max
      end

      def replace(array)
        max = find_max(array)
        result = []

        array.each do |i|
          result << if i.positive?
                      max
                    else
                      i
                    end
        end

        result
      end

      def search(array, element, index = 0)
        middle = (array.size / 2).round

        return -1 if array.empty? || array.size == 1 && array[0] != element

        return index if array[0] == element

        if element >= array[middle]
          right_side = array[middle, array.size]
          return search(right_side, element, index + middle)
        end

        left_side = array[0, middle]
        search(left_side, element, index)
      end
    end
  end
end
