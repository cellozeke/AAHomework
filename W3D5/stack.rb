class Stack
  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
  end

  def pop
    @stack.delete_at(@stack.length - 1) unless @stack.empty?
    @stack
  end

  def peek
    @stack[-1]
  end
end
