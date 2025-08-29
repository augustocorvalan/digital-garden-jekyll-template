Generate the content for a new writing file in Markdown format. The file should follow the structure and style of the examples provided.

**Instructions:**

1.  **Frontmatter:** The file must begin with a YAML frontmatter section enclosed in triple-dashed lines (---). This section must include the following fields:
    *   `layout`: Set this to `project`.
    *   `title`: The title of the writing.
    *   `description`: A brief, one-line description of the writing.
    *   `created_at`: The year the writing was created.
    *   `publication_link`: (Optional) The external URL where the writing can be read.
    *   `images`: A YAML list of strings, where each string is the path to an image. Image paths should start with `/assets/images/`.
    *   `show_home`: (Optional) A boolean (`true` or `false`) to indicate if the writing should be featured on the homepage.
    *   `thumbnail`: (Optional) The path to a thumbnail image for the writing.

2.  **Body Content:** The body of the Markdown file should contain a detailed description of the writing. This can be one or more paragraphs and may include HTML tags for formatting (e.g., `<i>`, `<br/>`). Unlike objects, writings focus on conceptual and literary descriptions rather than physical properties.

**Example Structure:**

```markdown
```markdown
---
layout: project
title: [Writing Title]
description: [Brief one-line description]
created_at: [Year]
publication_link: [URL where writing can be read]
show_home: [true/false]
thumbnail: [path/to/thumbnail.png]
images:
    - [/assets/images/writing-folder/image1.png]
    - [/assets/images/writing-folder/image2.png]
---

[Detailed description of the writing, its themes, process, and significance. Focus on conceptual and literary aspects rather than physical materials.]
```

```
