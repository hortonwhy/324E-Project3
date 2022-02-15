import re

# create some empty lists and sets to store the data
all_words = []
unique_words = set()
word_frequency = {}

with open("husbands_story.txt", encoding='utf-8') as book: # open the book file
    for line in book: # go through every line
        line = str(line.strip()).lower() # remove whitespace, turn the line into a string, and change all the letters to lowercase
        words = re.findall("[a-z]+", line) # filter out all characters that are not in the alphabet
        for word in words:
            all_words.append(word) # add every word to the all words matrix
            unique_words.add(word) # using a set ensures that all words are unique
            if word not in word_frequency: # add frequency to the dictionary
                word_frequency[word] = 1
            else:
                word_frequency[word] += 1
book.close()

# sort out the word frequency and convert it to a 2-D matrix
temp = {}
for i in word_frequency.values():
    if i not in temp:
        temp[i] = 1
    else:
        temp[i] += 1

# sort the dictionary for easier use
freq = {}
for i in sorted(temp):
   freq[i] = temp[i]


# create the files and overwrite them with the new information
create_allwords_file = open("allwords.txt", "w+")
for word in all_words:
    create_allwords_file.write(word + "\n")
create_allwords_file.close()

create_uniqueword_file = open("uniquewords.txt", "w+")
for word in unique_words:
    create_uniqueword_file.write(word + "\n")
create_uniqueword_file.close()

create_wordfrequency_file = open("wordfrequency.txt", "w+")
for number in freq:
    create_wordfrequency_file.write(f"{number}: {freq[number]}\n")
create_wordfrequency_file.close()
