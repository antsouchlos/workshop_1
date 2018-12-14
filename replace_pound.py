import os

FileNames = ["stromstarke_leistung_spannung_halogen", "stromstarke_leistung_spannung_lsr", "stromstarke_leistung_spannung_led", "theorie_kondensator", "spannung_led", "spannung_halogen", "spannung_lsr"];

for i in range(0, len(FileNames)):
	os.system("inkscape -D -z --file=" + FileNames[i] + ".svg --export-pdf=" + FileNames[i] + ".pdf --export-latex")

	with open(FileNames[i] + ".pdf_tex") as f:
		newText=f.read().replace('#', '');

	with open(FileNames[i] + ".pdf_tex", "w") as f:
		f.write(newText)
		
#import os
#
#FileName = "stromstarke_leistung_spannung_lsr";
#
#os.system("inkscape -D -z --file=" + FileName + ".svg --export-pdf=" + FileName + ".pdf --export-latex")
#
#with open(FileName + ".pdf_tex") as f:
#	newText=f.read().replace('#', '');
#
#with open(FileName + ".pdf_tex", "w") as f:
#	f.write(newText)