class LRUCache
  def initialize(num)
    @max_size = num
    @cache = []
  end

  def count
    @cache.length
  end

  def add(el)
    idx = nil
    i = -1
    until i == count || idx
      i += 1
      idx = i if @cache[i] == el
    end
    @cache.delete_at(idx) if idx
    @cache.shift if count == @max_size
    @cache.push(el)
  end

  def show
    @cache
  end

  private
  # helper methods go here!
end

class LRUCache2
  def initialize(num)
    @max_size = num
    @cache = {}
  end

  def count
    @cache.length
  end

  def add(el)
    # if 
    @cache.delete_at(idx) if idx
    @cache.shift if count == @max_size
    @cache.push(el)
  end

  def show
    @cache.reverse
  end

  private
  # helper methods go here!
end

# johnny_cache = LRUCache.new(4)
# johnny_cache.add("I walk the line")
# johnny_cache.add(5)
# johnny_cache.count # => returns 2
# johnny_cache.add([1,2,3])
# johnny_cache.add(5)
# johnny_cache.add(-5)
# johnny_cache.add({a: 1, b: 2, c: 3})
# johnny_cache.add([1,2,3,4])
# johnny_cache.add("I walk the line")
# johnny_cache.add(:ring_of_fire)
# johnny_cache.add("I walk the line")
# johnny_cache.add({a: 1, b: 2, c: 3})
# johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
