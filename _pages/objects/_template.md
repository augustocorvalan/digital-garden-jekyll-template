Generate the content for a new object file in Markdown format. The file should follow the structure and style of the examples provided.

**Instructions:**

1.  **Frontmatter:** The file must begin with a YAML frontmatter section enclosed in triple-dashed lines (---). This section must include the following fields:
    *   `layout`: Set this to `project`.
    *   `title`: The title of the object.
    *   `description`: A brief, one-line description of the object.
    *   `created_at`: The year the object was created.
    *   `materials`: The materials used to create the object.
    *   `size`: The dimensions of the object.
    *   `images`: A YAML list of strings, where each string is the path to an image. Image paths should start with `/assets/images/`.
    *   `show_home`: (Optional) A boolean (`true` or `false`) to indicate if the object should be featured on the homepage.
    *   `thumbnail`: (Optional) The path to a thumbnail image for the object.

2.  **Body Content:** The body of the Markdown file should contain a detailed description of the object. This can be one or more paragraphs and may include HTML tags for formatting (e.g., `<i>`, `<br/>`).

**Example Structure:**

```markdown
---
layout: project
title: [Object Title]
description: [Brief, one-line description]
created_at: [Year]
materials: [Materials used]
size: [Dimensions]
show_home: [true/false]
thumbnail: /assets/images/[path-to-thumbnail.jpg]
images:
    - /assets/images/[path-to-image-1.jpg]
    - /assets/images/[path-to-image-2.jpg]
---

[Detailed description of the object goes here. This can be multiple paragraphs and may include some HTML for formatting.]
```

**New Object Details:**

*   **Title:** [Provide the LLM with the title of the new object]
*   **Description:** [Provide the one-line description]
*   **Year Created:** [Provide the year]
*   **Materials:** [Provide the materials]
*   **Size:** [Provide the dimensions]
*   **Show on Home:** [Provide `true` or `false`]
*   **Thumbnail Path:** [Provide the path to the thumbnail image]
*   **Image Paths:** [Provide a list of image paths]
*   **Body Content:** [Provide the detailed description of the object]

Please generate the complete Markdown file content based on these instructions and the new object details.
