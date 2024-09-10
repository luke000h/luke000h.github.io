from frontmatter import Frontmatter
from markdown_pdf import MarkdownPdf
from markdown_pdf import Section

about = Frontmatter.read_file('Content/About/about.md')

cv = f"""
# Luke Hester

{about['body']}
"""

pdf = MarkdownPdf(toc_level=2)

pdf.add_section(Section(cv, toc=False))
print(cv)

pdf.meta["title"] = "Luke Hester CV"
pdf.meta["author"] = "Luke Hester"
pdf.save("Assets/LukeHester.pdf")
