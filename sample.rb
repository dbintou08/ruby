def evaluation_entree
  puts "Veuiller entrez une note sur une echelle de 1 a 5"
  point = gets.to_i
while true
if point <=0 || point> 5
  puts "Veuiller entrez une note sur une echelle de 1 a 5"
  point = gets.to_i
else 
  puts "Entrez les commentaires"
  comment = gets
  post = "point :#{point} comment:#{comment}"
      File.open("data.txt", "a") do |file|
        file.puts(post)
      end
      break
      end
  end
end
  def sortie_resultat
      puts "Resultats a ce jour "
         File.open("data.txt", "r") do |file|
          file.each_line do |line|
              puts line 
          end 
      end
  end
while true
      puts "Selectionner le processus que vous souhaitez mettre en oeuvre "
      puts "1:Entrez les points d'appreciations et les commentaires "
      puts "2 : Verifier les resultats obtenus jusqu'a present"
      puts "3 : Quitter"
      num= gets.to_i
      case num
  when 1 
      evaluation_entree
      when 2 
          sortie_resultat
          when 3 
              puts "fin"
              break
          else 
              puts "Veuillez entrer une note de 1 a 3 "
          end
      end