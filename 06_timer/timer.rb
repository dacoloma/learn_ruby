class Timer
  #write your code here
  attr_accessor :seconds
  def seconds
      @seconds = 0
  end

  def time_string
    h = @seconds / 3600
    m = (@seconds % 3600 ) / 60
    s = (@seconds % 3600 ) % 60
    h=format("%02d",h)
    m=format("%02d",m)
    s=format("%02d",s)

    return "#{h}:#{m}:#{s}"
  end
end
