# had a brainwave. just going to parse the file into something that my inital fortran program can use
# lol no regex pls

strfile = open("day1.txt", "r");
lines = strfile.readlines();
strfile.close();

out = open("p2.txt", "a");

digitsDict = {
    "one" : "one1one",
    "two" : "two2two",
    "three" : "three3three",
    "four" : "four4four",
    "five" : "five5five",
    "six" : "six6six",
    "seven" : "seven7seven",
    "eight" : "eight8eight",
    "nine" : "nine9nine",
    "zero" : "zero0zero",
};

for item in lines:
    for k, v in digitsDict.items():
        item = item.replace(k, v);
    out.write(item);

out.close();
