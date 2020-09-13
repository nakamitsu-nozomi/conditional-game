# 初期化
hash = Hash.new { |h,k| h[k] = {} }

hash["a"]["b"] = 1
p hash # => {"a"=>{"b"=>1}}