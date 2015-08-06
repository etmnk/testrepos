class Hoge
  @hoge = 123
  def hoge
    @hoge = 234
  end
  class << Hoge
    @hoge = 345
    def hoge
      @hoge
    end
  end
end

Hoge.new.hoge #=> 234
Hoge.hoge #=> 123
class << Hoge
  @hoge
end #=> 345

hoge = Hoge.new
class << hoge
  @hoge
end #=> nil