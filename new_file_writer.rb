puts "file name"
file_name = gets.chomp 

images = File.readlines("img_listings/#{file_name}")
# rename file here! also don't forget to change img- src below
newFile = File.open("new_html/abstract.html", "a")
title = ""

images.each do |i| 
  title = i.chomp("_thumb.jpg\n")
  puts title
  newFile.write("\t\t\t\t<div class='item'>\n")
  newFile.write("\t\t\t\t\t<a href='img-abstract/large/'"+i.chomp + " data-lightbox='image-1' data-title='" + title.capitalize + " (2012), oil on canvas, 12\"x12\"'>\n")
  newFile.write("\t\t\t\t\t<img src='img-abstract/thumb/" + i.chomp + "' alt='"+ i.chomp + "'/>\n")
  newFile.write("\t\t\t\t\t<figcaption><h4>" + title.capitalize + "</h4></figcaption>\n")
  newFile.write("\t\t\t\t</div>\n")
end

# should generate this:
# <div class='item'>
#   <a href="img-acrylic/large/rainyday_web.jpg" data-lightbox="image-1" data-title="Full Moon">
#   <img src='img-acrylic/thumb/rainyday_thumb.jpg' alt='rainyday_thumb.jpg'/>
#   <figcaption><h4>Rainyday</h4></figcaption>
#   </a>
# </div>