from frontmatter import Frontmatter
from markdown_pdf import MarkdownPdf
from markdown_pdf import Section
import os
from datetime import datetime

about = Frontmatter.read_file('Content/About/about.md')

role_files = os.listdir("Content/Roles")
role_files.sort()
roles = ""
for role_file in role_files:
    role = Frontmatter.read_file(f'Content/Roles/{role_file}')
    metadata = role['attributes']
    date_from = datetime.strptime(metadata['date'], '%Y-%m-%d %H:%M')
    date_from = date_from.strftime("%b %Y")
    date_to = metadata['to']
    roles += date_from + " - " + date_to + "\n"
    roles += role['body'] + "\n"

cv = f"""
# Luke Hester

{about['body']}

---

{roles}

"""

pdf = MarkdownPdf(toc_level=2)

pdf.add_section(Section(cv, toc=False))
print(role_files)

pdf.meta["title"] = "Luke Hester CV"
pdf.meta["author"] = "Luke Hester"
pdf.save("Assets/LukeHester.pdf")
