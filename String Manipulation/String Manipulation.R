"String Manipulation"

"1.	Create a string "Grow Gratitude".
Code for the following tasks:
a)	How do you access the letter "G" of "Growth"?
b)	How do you find the length of the string?
c)	Count how many times "G" is in the string.
"
Name <- "Grow Gratitude"
Name
#a)
#install package str_sub
str_sub(Name, 1,1)

#b)
#install package str_length
str_length(Name)

#c)
#str_count
str_count(Name, pattern='G')

"2.	Create a string "Being aware
of a single shortcoming within yourself is far more 
useful than being aware of a thousand in someone else.""

"Code for the following
a)	Count the number of characters in the string."

s <- "Being aware of a single shortcoming within yourself is far more useful than being aware of a thousand in someone else.""
s
nchar(s)

"3.	Create a string 
""Idealistic as it may sound, altruism should be the driving force in business, not just competition and a desire for wealth""
Code for the following tasks:"
"a)	get one char of the word
b)	get the first three char
c)	get the last three char
"
idea <- "Idealistic as it may sound, altruism should be the driving force in business, not just competition and a desire for wealth"
idea

#a)
#install package str_sub
str_sub(idea, 1,1)

#b)
str_sub(idea, 1,3)

#c)
str_sub(idea, 120,122)

"4.	create a string 
""stay positive and optimistic". 
"Now write a code to split on whitespace.""
Write a code to find if:
a)	The string starts with "H"
b)	The string ends with "d"
c)	The string ends with "c"
"
pos <- "stay positive and optimistic"
str_split(pos, pattern = " ")# " "  use to split where is the spaces used

#a)
str_starts(pos, pattern = "H")

#b)
str_ends(pos, pattern = "d")

#c)
str_ends(pos, pattern = "c")

"6.	Write a code to print " o " one hundred and eight times. (only in R)"
for (i in 1:108){
  print(paste("o"))
}

"7.	Create a string "Grow of Gratitude" and write a code to replace "Grow" with "Growth of"

U <- "Grow Gratitude"
# str_sub(string,start,end) <- "replacement
# start is indexing till end indexing
str_sub(U, 1,4) <- "Growth of"
U

"8.	A story was printed in a pdf, which isn't making any sense. i.e.:
".elgnujehtotniffo deps mehtfohtoB .eerfnoilehttesotseporeht no dewangdnanar eh ,ylkciuQ .elbuortninoilehtdecitondnatsapdeklawesuomeht ,nooS .repmihwotdetratsdnatuotegotgnilggurts saw noilehT .eert a tsniagapumihdeityehT .mehthtiwnoilehtkootdnatserofehtotniemacsretnuhwef a ,yad enO .ogmihteldnaecnedifnocs'esuomeht ta dehgualnoilehT ".emevasuoy fi yademosuoyotplehtaergfo eb lliw I ,uoyesimorp I" .eerfmihtesotnoilehtdetseuqeryletarepsedesuomehtnehwesuomehttaeottuoba saw eH .yrgnaetiuqpuekow eh dna ,peels s'noilehtdebrutsidsihT .nufroftsujydobsihnwoddnapugninnurdetratsesuom a nehwelgnujehtnignipeelsecno saw noil A"

You have noticed that the story is printed in a reversed order. Rectify the same and write a code to print the same story in a correct order.
"
story <- ".elgnujehtotniffo deps mehtfohtoB .eerfnoilehttesotseporeht no dewangdnanar eh ,ylkciuQ .elbuortninoilehtdecitondnatsapdeklawesuomeht ,nooS .repmihwotdetratsdnatuotegotgnilggurts saw noilehT .eert a tsniagapumihdeityehT .mehthtiwnoilehtkootdnatserofehtotniemacsretnuhwef a ,yad enO .ogmihteldnaecnedifnocs'esuomeht ta dehgualnoilehT ".emevasuoy fi yademosuoyotplehtaergfo eb lliw I ,uoyesimorp I" .eerfmihtesotnoilehtdetseuqeryletarepsedesuomehtnehwesuomehttaeottuoba saw eH .yrgnaetiuqpuekow eh dna ,peels s'noilehtdebrutsidsihT .nufroftsujydobsihnwoddnapugninnurdetratsesuom a nehwelgnujehtnignipeelsecno saw noil A"
story

stringi::stri_reverse(story)




