# how many columns are there i dont want to have to type out more than I need

gamefile = open("day2.txt", "r");
lines = gamefile.readlines();

gamefile.close();

maxCols = 0;

for line in lines:
    line = line.split(" ");
    print(line);
    if (len(line) > maxCols):
        maxCols = len(line);

print(maxCols);

# please spit me out a string of all the variable names i need so i dont have to type them out by hand

string = "";

for i in range(1, int(maxCols/2)):
    string = string + "g" + str(i) + "c" + " g" + str(i) + "n ";

print(string);