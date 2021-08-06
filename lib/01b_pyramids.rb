def ask_ramsesII
  puts "Dis moi Ramsès II , tu veux une pyramide à combien d'étages ? 𓀂"
  puts "Choisis un nombre impair sinon ca va être cheum."
  print "> "

  while true do
    nb_floors = gets.chomp.to_s

    if nb_floors.to_i > 0 && nb_floors.to_i <=29 && nb_floors.to_i.odd? # seule réponse valide
      puts "Voilà ta pyramide l'ami:"
      puts "Cette forme diamantée est très avant-gardiste !"
      return nb_floors.to_i

    elsif nb_floors.to_i > 0 && nb_floors.to_i <=29 && nb_floors.to_i.even? # gère les nombres pairs dans l'interval
      puts "Ca me semble être une taille raisonable mais choisis plutôt un nombre impair."
      print "> "

    elsif nb_floors.to_i > 29 # si supérieur à 25
      puts "T'abuses poto, 29 étages ca sera déjà cool."
      print "> "

    elsif nb_floors == "0" || nb_floors.to_i <= -1 # si inférieur ou égal à 0
      puts "Tu veux une non-pyramide ? Chelou mec !"
      print "> "

    elsif nb_floors.empty? # si gets est vide
      puts "Réponds moi gros."
      print "> "

    else # autres cas
      puts "C'est pas un nombre mec. Je m'inquiète pour ta santé."
      print "> "
    end
  end
end


def build_wtf_pyramid(nb_floors)
  #top + middle part
  (nb_floors/2+1).times do |i|
    print " " * ((nb_floors/2)-i)
    print "#" * (i*2+1)
    puts " " * ((nb_floors/2)-i) + "   <- #{nb_floors-i}"
  end

  #bottom part
  (nb_floors/2).times do |i|
    print " " * (i+1)
    print "#" * (nb_floors-((i+1)*2))
    puts " " * (i+1) + "   <- #{(nb_floors/2-i)}"
  end
end

def perform
  nb_floors = ask_ramsesII
  build_wtf_pyramid(nb_floors)
end

perform