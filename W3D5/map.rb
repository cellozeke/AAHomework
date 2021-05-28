class Map
  def initialize
    @map = []
  end

  def set(key, value)
    unless @map.empty?
      @map.each do |pair|
        if pair[0] == key
          pair[1] = value
          return @map
        end
      end
    end
    @map << [key, value]
  end

  def get(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
    nil
  end

  def delete(key)
    @map.reject! { |pair| pair[0] == key }
  end

  def show
    @map
  end
end
