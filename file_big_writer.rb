puts "file name"
file_name = gets.chomp 

images = File.readlines("img_listings/#{file_name}")
# rename file here! also don't forget to change img- src below
newFile = File.open("new_html/BigSilk.html", "a")
title = ""

images.each do |i| 
  title = i.chomp("_web.jpg\n")
  puts title
  newFile.write("<li>\n")
  newFile.write("\t<figure>\n")
  newFile.write("\t\t<figcaption>\n")
  newFile.write("\t\t\t<h3>" + title.capitalize + " (2012)</h3>\n")
  newFile.write("\t\t\t<p>Acrylic on French Rag, 16\"x20\", edition of 21, $175</p>\n")
  newFile.write("\t\t<figcaption>\n")
  newFile.write("\t\t<img src='img-acrylic/large/" + i.chomp + "' alt='"+ i.chomp + "'/>\n")
  newFile.write("\t</figure>\n")
  newFile.write("</li>\n")
end

# should generate this:
# <li>
#   <figure>
#     <figcaption>
#       <h3>Embarcadero (2012)</h3>
#       <p>Acrylic on French Rag, 16"x20", edition of 21, $175</p>
#     </figcaption>
#     <img src="img-silkscreen/large/embarcadero_web.jpg" alt="img01"/>
#   </figure>
# </li>


