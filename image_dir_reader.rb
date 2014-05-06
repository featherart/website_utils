# all the paths to images
a_big_path = "../new_website/img-acrylic/large"
a_little_path = "../new_website/img-acrylic/thumb"
s_big_path = "../new_website/img-silkscreen/large"
s_little_path = "../new_website/img-silkscreen/thumb"
o_big_path = "../new_website/img-landscape/large"
o_little_path = "../new_website/img-landscape/thumb"
l_big_path = "../new_website/img-linen/large"
l_little_path = "../new_website/img-linen/thumb"
ab_little_path = "../new_website/img-abstract/thumb"
ab_big_path = "../new_website/img-abstract/large"
f_little_path = "../new_website/img-floral/thumb"
f_big_path = "../new_website/img-floral/large"
land_little_path = "../new_website/img-landscape/thumb"
land_big_path = "../new_website/img-landscape/large"
c_little_path = "../new_website/img-cityscape/thumb"
c_big_path = "../new_website/img-cityscape/large"


#write to each file to list the images
land_little_f = File.open("land_small.txt", "a")
Dir.foreach(land_little_path) {|x| land_little_f.write("#{x}\n") }

land_big_f = File.open("land_big.txt", "a")
Dir.foreach(land_big_path) {|x| land_big_f.write("#{x}\n") }

c_little_f = File.open("cityscape_small.txt", "a")
Dir.foreach(c_little_path) {|x| c_little_f.write("#{x}\n") }

c_big_f = File.open("cityscape_big.txt", "a")
Dir.foreach(c_big_path) {|x| c_big_f.write("#{x}\n") }

a_little_f = File.open("acrylic_small.txt", "a")
Dir.foreach(a_little_path) {|x| a_little_f.write("#{x}\n") }

a_big_f = File.open("acrylic_big.txt", "a")
Dir.foreach(a_big_path) {|x| a_big_f.write("#{x}\n") }

s_little_f = File.open("screen_small.txt", "a")
Dir.foreach(s_little_path) {|x| s_little_f.write("#{x}\n") }

s_big_f = File.open("screen_big.txt", "a")
Dir.foreach(s_big_path) {|x| s_big_f.write("#{x}\n") }

o_little_f = File.open("oil_small.txt", "a")
Dir.foreach(o_little_path) {|x| o_little_f.write("#{x}\n") }

o_big_f = File.open("oil_big.txt", "a")
Dir.foreach(o_big_path) {|x| o_big_f.write("#{x}\n") }

l_little_f = File.open("linen_small.txt", "a")
Dir.foreach(l_little_path) {|x| l_little_f.write("#{x}\n") }

l_big_f = File.open("linen_big.txt", "a")
Dir.foreach(l_big_path) {|x| l_big_f.write("#{x}\n") }

ab_big_f = File.open("abstract_big.txt", "a")
Dir.foreach(ab_big_path) {|x| ab_big_f.write("#{x}\n")}

ab_little_f = File.open("abstract_little.txt", "a")
Dir.foreach(ab_little_path) {|x| ab_little_f.write("#{x}\n")}

f_big_f = File.open("floral_big.txt", "a")
Dir.foreach(f_little_path) {|x| f_big_f.write("#{x}\n")}

f_little_f = File.open("floral_little.txt", "a")
Dir.foreach(f_little_path) {|x| f_little_f.write("#{x}\n")}
