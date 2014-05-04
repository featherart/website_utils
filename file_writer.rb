puts "file name"
file_name = gets.chomp 

images = File.readlines("img_listings/#{file_name}")
# rename file here! also don't forget to change img- src below
newFile = File.open("new_html/LittleSilk.html", "a")
title = ""

images.each do |i| 
  title = i.chomp("_thumb.jpg\n")
  puts title
  newFile.write("<li>\n")
  newFile.write("\t<figure>\n")
  newFile.write("\t\t<img src='img-silkscreen/thumb/" + i.chomp + "' alt='"+ i.chomp + "'/>\n")
  newFile.write("\t\t\t<figcaption><h4>" + title.capitalize + "</h4></figcaption>\n")
  newFile.write("\t</figure>\n")
  newFile.write("</li>\n")
end

# should generate this:
# <li>
#   <figure>
#     <img src="img-silkscreen/thumb/embarcadero_thumb.jpg" alt="embarcadero"/>
#     <figcaption><h4>Embarcadero (2012)</h4></figcaption>
#   </figure>
# </li>