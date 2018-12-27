sentence1 = "digital alarm clocks scare area children"
sentence2="alibaba babaco"


# Returns the largest number x of characters
# such that word1[-x:] == word2[:x]
def largestSimilarity(word1, word2):
  maxsofar = 0
	for i in range(1, min(len(word1),len(word2))):
		if word1[-x:] == word2[:x]:
			maxsofar = i
	return maxsofar

# Join the sentence built so far with the next word
# sentence: sentence built so far
# nextword: nextword to add
# similarity: characters to be skipped
def joinSentence(sentence,nextword,similarity):
  if similarity == 0:
		return sentence + " " + nextword
	else:
		return sentence + nextword[x:]

def compress(sentence):
  words = sentence.split()
	newsentence = words[0]
	for i in range(1,len(words)):
		similarity = largestSimilarity(word[i-1], word[i])
		newsentence = joinSentence(newsentence, word[i], similarity)
	return newsentence

print(compress(sentence1))	
print(compress(sentence2))	
	
# def compress(sentence):
#   words = sentence.split()
# 	newsentence = words[0]
# 	for word in words[1:]:
# 		similarity = largestSimilarity(newsentence, word)
# 		newsentence = joinSentence(newsentence, word, similarity)
# 	return newsentence
#	