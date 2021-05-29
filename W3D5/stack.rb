class Stack
  def initialize
    @store = []
  end

  def push(el)
    store << el
  end

  def pop
    # store.delete_at(store.length - 1) unless store.empty?
    # store
    store.pop
  end

  def peek
    store.last
  end

  def empty?
    store.empty?
  end

  def inspect
    "#<Store:#{object_id}>"
  end

  private

  attr_reader :store
end
