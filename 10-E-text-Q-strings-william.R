# =====================================================================================================================
# STRING MANIPULATION EXERCISES
# =====================================================================================================================

# A rhyme from "A Book of Nonsense" by Edward Lear.
#
nonsense = "  There was an Old Man in a tree,
Who was horribly bored by a Bee;    
When they said, 'Does it buzz?' he replied, 'Yes, it does!\t
    It's a regular brute of a Bee.'"

# An extract from "Frankenstein" by Mary Wollstonecraft (Godwin) Shelley.
#
frankenstein = c(
  "Six years have passed since I resolved on my present undertaking.", 
  "I can, even now, remember the hour from which I dedicated myself to this great enterprise.", 
  "I commenced by inuring my body to hardship.", "I accompanied the whale-fishers on several expeditions to the North Sea; I voluntarily endured cold, famine, thirst, and want of sleep; I often worked harder than the common sailors during the day and devoted my nights to the study of mathematics, the theory of medicine, and those branches of physical science from which a naval adventurer might derive the greatest practical advantage.", 
  "Twice I actually hired myself as an under-mate in a Greenland whaler, and acquitted myself to admiration. I must own I felt a little proud when my captain offered me the second dignity in the vessel and entreated me to remain with the greatest earnestness, so valuable did he consider my services.", 
  "And now, dear Margaret, do I not deserve to accomplish some great purpose?  My life might have been passed in ease and luxury, but I preferred glory to every enticement that wealth placed in my path.", 
  "Oh, that some encouraging voice would answer in the affirmative!  My courage and my resolution is firm; but my hopes fluctuate, and my spirits are often depressed.", 
  "I am about to proceed on a long and difficult voyage, the emergencies of which will demand all my fortitude:  I am required not only to raise the spirits of others, but sometimes to sustain my own, when theirs are failing."
)

# Exercise 1 ----------------------------------------------------------------------------------------------------------

# Concatenate the text from frankenstein. Try a few ways of doing this.
#
# Store the result in Frankenstein.
Frankenstein <- paste(frankenstein, collapse = " ")
# Exercise 2 ----------------------------------------------------------------------------------------------------------

# Split nonsense on line breaks. Remove excess white space from each line. Reassemble the text as a single string.
# Store the result as Nonsense.

Nonsense <- paste(vector, collapse = ' ')

# Exercise 3 ----------------------------------------------------------------------------------------------------------

# Count the number of times that the word "me" appears in Frankenstein. Resist the urge to do this manually!

str_count(Frankenstein, "\\bme\\b")

# Exercise 4 ----------------------------------------------------------------------------------------------------------

# Find the position of the word "courage" in Frankenstein.
# Find the positions of all occurrences of the word "own" in Frankenstein.

str_locate_all(Frankenstein, "\\b[Cc]ourage\\b")
str_locate_all(Frankenstein, "\\b[Oo]wn\\b")


# Exercise 5 ----------------------------------------------------------------------------------------------------------

# In Nonsense replace every occurrence of "Bee" with "Donkey".

str_replace_all(Nonsense, "Bee","Donkey")

# Exercise 6 ----------------------------------------------------------------------------------------------------------

# Wrap the Frankenstein text into a paragraph with at most 80 characters per line.

str_wrap(Frankenstein)
cat(.Last.value)