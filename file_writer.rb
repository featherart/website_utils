puts "file name"
file_name = gets.chomp 

images = File.readlines(file_name)
newFile = File.open("newAcrylic.html", "a")
title = ""

images.each do |i| 
  title = i.chomp("_thumb.jpg\n")
  puts title
  newFile.write("<li>\n")
  newFile.write("\t<figure>\n")
  newFile.write("\t\t<img src='img-acrylic/thumb/" + i.chomp + "' alt='"+ i.chomp + "'/>\n")
  newFile.write("\t\t\t<figcaption><h4>" + title.capitalize + " (2012)</h4></figcaption>\n")
  newFile.write("\t</figure>\n")
  newFile.write("</li>\n")
end

            # <li>
            #   <figure>
            #     <img src="img-silkscreen/thumb/embarcadero_thumb.jpg" alt="embarcadero"/>
            #     <figcaption><h4>Embarcadero (2012)</h4></figcaption>
            #   </figure>
            # </li>