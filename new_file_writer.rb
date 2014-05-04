puts "file name"
file_name = gets.chomp 

images = File.readlines("img_listings/#{file_name}")
# rename file here! also don't forget to change img- src below
newFile = File.open("new_html/little_acrylic.html", "a")
title = ""

images.each do |i| 
  title = i.chomp("_thumb.jpg\n")
  puts title
  newFile.write("\t\t\t\t<div class='item w2'>\n")
  newFile.write("\t\t\t\t\t<img src='img-acrylic/thumb/" + i.chomp + "' alt='"+ i.chomp + "'/>\n")
  newFile.write("\t\t\t\t\t<figcaption><h4>" + title.capitalize + "</h4></figcaption>\n")
  newFile.write("\t\t\t\t</div>\n")
end

# should generate this:
# <div class="item w2">
#<img src='img-acrylic/thumb/geisha_thumb.jpg' alt='geisha_thumb.jpg'/>
# <figcaption><h4>Geisha </h4></figcaption>
# </div>