n = 4
if n == 3
  p 'nは3です'
end

n = 2
if n == 3 || n == 4
  p '3,4のどちらかです'
end

n = 2
if n == 3
  p 'nは3です'
elsif n == 4
  p 'nは4です'
end

for num in 1..5 do
  p 'こんにちわ'
end

[1,2,3,4,5].each do |num|
  p num
end

n = 0
if num == 2
  p '2です'
elsif num == 3
  p '3です'
else
  p 'それ以外です'
end
