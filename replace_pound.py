import os

FileName = "stromstarke_leistung_spannung_led";

os.system("inkscape -D -z --file=" + FileName + ".svg --export-pdf=" + FileName + ".pdf --export-latex")

with open(FileName + ".pdf_tex") as f:
	newText=f.read().replace('#', '');
	
with open(FileName + ".pdf_tex", "w") as f:
	f.write(newText)