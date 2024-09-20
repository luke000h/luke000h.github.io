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
    roles += f"{date_from} to {date_to} - **{metadata['role']}** - {metadata['org']} <br>"
    roles += role['body'] + "\n"


page1 = f"""
**Luke Hester | luke.hester@tutanota.com**

{about['body']}

---
**Qualifications**
- Certified SAFe® 6 DevOps Practitioner (Scaled Agile Inc)
- Level 3 Project Management (The Skills Network)
- AWS Certified Cloud Practitioner (Amazon Web Services)
- ISTQB® Foundation Level Tester (BCS)
- CS50x: Introduction to Computer Science (Harvard)
- A Levels - Maths A, Chemistry B, Physics B

---
**Projects & Awards**
- Segment Workout Timer - iOS interval timer app.
- RLC Foundation 2023 Initiative Award for digital process improvements.
- MoD Hackathon 2022 - Winner of the best app award presented by Apple.

---

**Career history**

{roles}
"""

# page2 = f"""
# ## Career history

# {roles}

# """

pdf = MarkdownPdf(toc_level=2)
pdf.add_section(Section(page1, toc=False))
# pdf.add_section(Section(page2, toc=False))

pdf.meta["title"] = "Luke Hester CV"
pdf.meta["author"] = "Luke Hester"
pdf.save("Assets/LukeHester.pdf")
