# had a brainwave. just going to parse the file into something that my inital fortran program can use
# lol no regex pls

strfile = open("day1.txt", "r");
lines = strfile.readlines();
strfile.close();

out = open("p2.txt", "a");

digitsDict = {
    "one" : "1",
    "two" : "2",
    "three" : "3",
    "four" : "4",
    "five" : "5",
    "six" : "6",
    "seven" : "7",
    "eight" : "8",
    "nine" : "9",
    "zero" : "0",
};

for item in lines:
    for k, v in digitsDict.items():
        item = item.replace(k, v);
    out.write(item);

out.close();