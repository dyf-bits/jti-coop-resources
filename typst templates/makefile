all: final weekly

final: src/final_report.typ
	typst compile --root . src/final_report.typ out/final_report.pdf

weekly: src/weekly_report.typ
	typst compile --root . src/weekly_report.typ out/weekly_report.pdf

clean:
	rm out/*.pdf
