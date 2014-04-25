big_path = "../new_website/img-acrylic/large"
little_path = "../new_website/img-acrylic/thumb"

#p Dir.entries(big_path)
big_f = File.open("big_images.txt", "a")


Dir.foreach(big_path) {|x| big_f.write("#{x}\n") }
