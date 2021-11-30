# Extend nested list by adding the sublist
# You have given a nested list. Write a program to extend it by adding the sublist ["h", "i", "j"] in such a
# way that it will look like the following list.

list_val = ["a", "b", ["c", ["d", "e", ["f", "g"], "k"], "l"], "m", "n"]
sub_list = ["h", "i", "j"]

list_val[2][1][2].extend(sub_list)
print(list_val)
