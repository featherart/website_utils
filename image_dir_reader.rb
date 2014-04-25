# all the paths to images
a_big_path = "../new_website/img-acrylic/large"
a_little_path = "../new_website/img-acrylic/thumb"
s_big_path = "../new_website/img-silkscreen/large"
s_little_path = "../new_website/img-silkscreen/thumb"
o_big_path = "../new_website/img-oil/large"
o_little_path = "../new_website/img-oil/thumb"
l_big_path = "../new_website/img-linen/large"
l_little_path = "../new_website/img-linen/thumb"

#write to each file to list the images
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

