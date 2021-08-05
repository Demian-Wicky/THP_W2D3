def ask_ramsesII
  puts "Dis moi Ramsès II, tu veux une pyramide à combien d'étages ?"
  puts "Choisis un nombre impair sinon ca va être cheum"
  print "> "
  nb_floors = gets.chomp.to_i
  return nb_floors
end


def build_wtf_pyramid(nb_floors)
  #top part
  (nb_floors/2).times do |i|
    print " " * ((nb_floors/2)-i)
    puts "#" * (i*2+1)
  end

  #middle part
  puts "#" * nb_floors

  #bottom part
  (nb_floors/2).times do |i|
    print " " * (i+1)
    puts "#" * (nb_floors-((i+1)*2))
  end
end

def perform
  nb_floors = ask_ramsesII
  build_wtf_pyramid(nb_floors)
end

perform