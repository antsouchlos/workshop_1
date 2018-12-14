with open(FileName) as f:
newText=f.read().replace('Apples', 'Oranges')
 
with open(FileName, "w") as f:
f.write(newText)