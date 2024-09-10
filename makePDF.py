from frontmatter import Frontmatter
from fpdf import FPDF
from markdown_pdf import MarkdownPdf
from markdown_pdf import Section

about = Frontmatter.read_file('Content/About/about.md')



pdf = MarkdownPdf(toc_level=2)

pdf.add_section(Section("# Title\n", toc=False))

pdf.add_section(
  Section("# Head1\n\n![python](img/python.png)\n\nbody\n"),
  user_css="h1 {text-align:center;}"
)

pdf.add_section(Section("## Head2\n\n### Head3\n\n", paper_size="A4-L"))

pdf.meta["title"] = "Luke Hester CV"
pdf.meta["author"] = "Luke Hester"
pdf.save("Assets/LukeHester.pdf")
# # save FPDF() class into a 
# # variable pdf
# pdf = FPDF()
 
# # Add a page
# pdf.add_page()
 
# # set style and size of font 
# # that you want in the pdf
# pdf.set_font("Arial", size = 15)
 
# # Name
# pdf.cell(200, 10, txt = "Luke Hester", 
#          ln = 1, align = 'C')

# # TODO: Contact info
 
# pdf.set_font("Arial", size = 11)
# # add another cell
# pdf.cell(200, 10, txt = about['body'],
#          ln = 2, align = 'L')
 
# # save the pdf with name .pdf
# pdf.output("Assets/LukeHester.pdf")   