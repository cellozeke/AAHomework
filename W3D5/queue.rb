class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store << el
  end

  def dequeue
    @store.shift
  end

  def show
    print store
  end

  def peek
    @store.last
  end

  def empty?
    @store.empty?
  end

  private

  attr_reader :store
end
