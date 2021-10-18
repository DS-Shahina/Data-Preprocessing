"String Manipulation"
"1.	Create a string “Grow Gratitude”.
"Code for the following tasks:
"a)	How do you access the letter “G” of “Growth”?
"b)	How do you find the length of the string?
"c)	Count how many times “G” is in the string.

#a)
Name = "Grow Gratitude"

print(Name[0]) 

#b)
print(len(Name))

#c)
count = Name.count('G')
count

"2.	Create a string “Being aware of a single shortcoming within yourself is far more useful than being aware of a thousand in someone else.”

"Code for the following
"a)	Count the number of characters in the string.
"

string = "Being aware of a single shortcoming within yourself is far more useful than being aware of a thousand in someone else."
string

#a)
def count_chars(txt):
	result = 0
	for char in txt:
		result += 1     # same as result = result + 1
	return result
count_chars(string)
#or
print(len(string))

"3.	Create a string 
"Idealistic as it may sound, altruism should be the driving force in business, not just competition and a desire for wealth"
"Code for the following tasks:

"a)	get one char of the word
"b)	get the first three char
"c)	get the last three char
"
idea = "Idealistic as it may sound, altruism should be the driving force in business, not just competition and a desire for wealth"
idea

print(idea[0]) 
print(idea[0:3]) 
print(idea[-3:])

"4.	create a string 
"stay positive and optimistic". 
"Now write a code to split on whitespace.
"Write a code to find if:
"a)	The string starts with “H”
"b)	The string ends with “d”
"c)	The string ends with “c”
"

create = "stay positive and optimistic"
print(create)
print(create.split(' ', 3 ))

create.startswith("H")
create.endswith("d")
create.endswith("c")

"5.	Write a code to print " 🪐 " one hundred and eight times. (only in python)"

code = " 🪐 " * 108
code

"7.	Create a string “Grow Gratitude” and write a code to replace “Grow” with “Growth of”"

c = "Grow Gratitude"
c.replace("Grow","Growth of")

"8.	A story was printed in a pdf, which isn’t making any sense. i.e.:
"“.elgnujehtotniffo deps mehtfohtoB .eerfnoilehttesotseporeht no dewangdnanar eh ,ylkciuQ .elbuortninoilehtdecitondnatsapdeklawesuomeht ,nooS .repmihwotdetratsdnatuotegotgnilggurts saw noilehT .eert a tsniagapumihdeityehT .mehthtiwnoilehtkootdnatserofehtotniemacsretnuhwef a ,yad enO .ogmihteldnaecnedifnocs’esuomeht ta dehgualnoilehT ”.emevasuoy fi yademosuoyotplehtaergfo eb lliw I ,uoyesimorp I“ .eerfmihtesotnoilehtdetseuqeryletarepsedesuomehtnehwesuomehttaeottuoba saw eH .yrgnaetiuqpuekow eh dna ,peels s’noilehtdebrutsidsihT .nufroftsujydobsihnwoddnapugninnurdetratsesuom a nehwelgnujehtnignipeelsecno saw noil A”

"You have noticed that the story is printed in a reversed order. Rectify the same and write a code to print the same story in a correct order.
"
story = ".elgnujehtotniffo deps mehtfohtoB .eerfnoilehttesotseporeht no dewangdnanar eh ,ylkciuQ .elbuortninoilehtdecitondnatsapdeklawesuomeht ,nooS .repmihwotdetratsdnatuotegotgnilggurts saw noilehT .eert a tsniagapumihdeityehT .mehthtiwnoilehtkootdnatserofehtotniemacsretnuhwef a ,yad enO .ogmihteldnaecnedifnocs’esuomeht ta dehgualnoilehT ”.emevasuoy fi yademosuoyotplehtaergfo eb lliw I ,uoyesimorp I“ .eerfmihtesotnoilehtdetseuqeryletarepsedesuomehtnehwesuomehttaeottuoba saw eH .yrgnaetiuqpuekow eh dna ,peels s’noilehtdebrutsidsihT .nufroftsujydobsihnwoddnapugninnurdetratsesuom a nehwelgnujehtnignipeelsecno saw noil A"
story

story[::-1]










