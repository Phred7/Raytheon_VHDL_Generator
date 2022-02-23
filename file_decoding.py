import codecs

file = codecs.open("phantom_tmp.obj", "r", "ansi")
print("ANSI: ")
for line in file.readlines():
    if "C:\\Users\\wward\\Documents\\GitHub\\Raytheon_VHDL_Generator\\" in line:
        print(line)
