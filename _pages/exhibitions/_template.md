---
---

Generate the content for a new exhibition file in Markdown format. The file should follow the structure and style of the examples provided.

Instructions:

Frontmatter: The file must begin with a YAML frontmatter section enclosed in triple-dashed lines (---). This section must include the following fields:

layout: Set this to exhibit.
title: The title of the exhibition.
gallery_name: The name of the gallery or hosting organization.
gallery_location: The physical location of the gallery (city, state/country).
gallery_url: The full URL to the exhibition's webpage.
show_date: The date or date range of the exhibition.
images: A YAML list of strings, where each string is the path to an image. Image paths should start with images.
Body Content: The body of the Markdown file should be structured as follows:

Start with a horizontal rule (<hr/>).
Include a level-3 heading with the text "Works", styled with a CSS class for uppercase text: <h3 class="uppercase">Works</h3>.
List the works featured in the exhibition. Each work should be a hyperlink (<a>) with the class internal-link. The href attribute should be a relative path to the work's page on the site (e.g., /path-to-work).
Follow the list of works with another horizontal rule (<hr/>).
(Optional) If there is descriptive text about the exhibition, include it after the second horizontal rule. This text should be in plain paragraphs.

Example Structure:

```
---
layout: exhibit
title: [Exhibition Title]
gallery_name: [Gallery Name]
gallery_url: [URL to exhibition]
show_date: [Date of show]
images:
    - /assets/images/[path-to-image-1.jpg]
    - /assets/images/[path-to-image-2.jpg]
---

<hr/>
<h3 class="uppercase">Works</h3>
<a class="internal-link" href="/[path-to-work-1]">Work Title 1</a>
<a class="internal-link" href="/[path-to-work-2]">Work Title 2</a>
<hr/>

[Optional descriptive text about the exhibition goes here.]
```

New Exhibition Details:

Title: [Provide the LLM with the title of the new exhibition]
Gallery Name: [Provide the gallery name]
Gallery URL: [Provide the gallery URL]
Show Date: [Provide the show date]
Images: [Provide a list of image paths]
Works: [Provide a list of works and their links]
Description: [Provide the descriptive text for the exhibition]
Please generate the complete Markdown file content based on these instructions and the new exhibition details.