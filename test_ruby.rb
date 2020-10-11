#Ruby01
#課題１
p "Branding Engineer"
puts "Hello"
print "HR Tech"
#課題２
puts "1"
puts "2"
puts "3"

p 1
p 2
p 3
#課題３
#p:　数字はそのまま　文字列は””で囲まれて表示される。*改行される
#puts　オブジェクト（文字列と数字）を表示する ””は表示されない　*改行される
#print: オブジェクトを表示する　””は表示されない　*改行されない

########################################
#Ruby02
#課題１
puts "初めてのRuby"
#課題２
puts "始めました" + "Ruby"
#課題３
p 3 + 3
p 3 - 3
p 3 * 3
p 3 / 3
#課題４
array = [1,2,3,4]
#課題５
num_array = array
#課題6
p num_array
#課題７
Masa = { date: "1996/11/24", blood:"O型" }
p Masa[:blood]
#課題８
def plus_ruby(name)
    return name + "ruby"
end

p plus_ruby("like")
p plus_ruby("yhee")
#課題９
def plus_one(num)
    return num  + 1
end 

p plus_one(4)
p plus_one(10)

########################################
#Ruby03
#課題１
n = 3
if n == 3
    puts "nは3です"
end
#課題２
n = 4
if n == 3 || n == 4
    puts "3、4のどちらかです"
end
#課題３
n = 4
if n == 3
    puts "nは3です"
elsif n == 4
    puts "nは4です"
end
#課題４
for num in 1..5 do
    p "こんにちわ"
end
#課題５
a = [1,2,3,4,5]
a.each do |num|
    p num
end 
#課題６
n = 0
if num == 2
    puts "2です"
elsif num == 3
    puts "3です"
else
    puts "それ以外です"
end 

########################################
#Ruby04
#課題1,2,3
class People 
    
    def initialize
        puts "Peopleのインスタンスが作られました"
    end 
    
    def self.greet
        puts "私はPeopleクラスです"
    end 
    
    def name(value)
        @name = value
    end 
    
    attr_accessor :name
    
 end 

people = People.new
people.greet
#インスタンスから呼び出せないことの確認↑
people.name = "yamada"
p people.name

#課題4,5
class ChildPeople < People
    def self.beam
        puts "私は目からビームが出せます"
    end 
end 

ChildPeople.new
ChildPeople.beam
