class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
    @queue
  end

  def peek
    @queue[-1]
  end
end
