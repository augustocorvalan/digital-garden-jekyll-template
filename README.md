# Portfolio-Web

Artist website for Agustin Rosa — https://rosa-studio.com

Jekyll + Tailwind, built on Maxime Vaillancourt's [digital garden Jekyll template](https://github.com/maximevaillancourt/digital-garden-jekyll-template) (MIT license). Deployed with Netlify (`netlify.toml`).

The vault side of the workflow (project folders, inbox notes, checklists) lives in `50 Art/Workflows` — see `100-portfolio-ready.md`.

## Local development

Needs Ruby 3.2.1 (`.ruby-version`); the macOS system Ruby (2.6) is too old for Jekyll 4.3. Ruby is managed with rbenv (installed via Homebrew), which picks up `.ruby-version` automatically once your shell has `eval "$(rbenv init - zsh)"` in `~/.zshrc`.

One-time setup on a new machine:

```bash
brew install rbenv ruby-build libyaml
rbenv install 3.2.1
gem install bundler:2.2.3
bundle install
npm install   # PostCSS/Tailwind deps (node_modules)
```

Run:

```bash
bundle exec jekyll serve
```

Then open http://localhost:4000. jekyll-postcss starts a small Node server that shuts down when stdin closes, so run Jekyll from a normal terminal (from scripts, use `bundle exec jekyll build < <(sleep 300)`). Always run Jekyll from this folder (the site root), never from inside `_pages/` — doing so leaves stray `.jekyll-cache/` and `_site/` folders in the content tree.

## Where things live

| What | Where | Layout |
| --- | --- | --- |
| Objects (sculpture, installation) | `_pages/objects/<slug>.md` | `project` |
| Individual writings / e-lit pieces | `_pages/writings/<slug>.md` | `project` |
| Publication / magazine issue pages | `_pages/writings/<slug>.md` | `exhibit` |
| Exhibitions | `_pages/exhibitions/<slug>.md` | `exhibit` |
| CV (about page) | `_data/cv/*.csv` | rendered by `_pages/about.html` |
| Home page "Editor" cards | `_data/home_editor.csv` | rendered by `_pages/index.html` |
| Footer contact links | `_data/contact.csv` | `_includes/footer.html` |
| Images & video | `assets/images/<slug>/` | |

Every page is served at `/<filename-without-extension>` (e.g. `_pages/objects/quatro-bocas.md` → `/quatro-bocas`), whatever folder it sits in.

Each folder has a `_template.md` describing the front matter.

## Adding a work

1. Put web-sized images in `assets/images/<slug>/`, named `<slug>-01.jpg`, `<slug>-02.jpg`, … (JPEG, about 1600px on the long side). If the work goes on the home page, also make a card thumbnail `<slug>-thumbnail.jpg` at 800×1067 (3:4). Never use a full-size image as the thumbnail, because every card loads on the home page:

    ```bash
    sips -s format jpeg -s formatOptions 78 -Z 1600 original.png --out assets/images/<slug>/<slug>-01.jpg
    sips -s format jpeg -s formatOptions 78 -z 1067 800 cropped-3x4.png --out assets/images/<slug>/<slug>-thumbnail.jpg
    ```

2. Create `_pages/objects/<slug>.md` or `_pages/writings/<slug>.md`:

    ```yaml
    ---
    layout: project
    title: Work Title
    description: three-to-five word tagline
    created_at: 2025
    materials: paper pulp, acrylic     # objects only
    size: 12" x 16" x 5"               # objects only
    publication_link: https://…        # writings only: adds a "Read Here" link
    show_home: true                    # list it on the home page
    thumbnail: /assets/images/<slug>/<slug>-thumbnail.jpg
    images:
        - /assets/images/<slug>/<slug>-01.jpg
    ---

    Artist statement / description.
    ```

3. The home page shows pages with `show_home: true`, newest `created_at` first, grouped by folder (objects / writings).

## Adding a publication or exhibition

Create a page with `layout: exhibit` (in `writings/` for publications, `exhibitions/` for shows) and link each included work under a "Works" heading:

```html
<hr/>
<h3 class="uppercase">Works</h3>
<a class="internal-link" href="/work-slug">Work Title</a>
<hr/>

Description of the issue or show.
```

That link is what makes the publication/exhibition appear in the work page's sidebar (backlinks).

Then add a row to the matching CV file.

## Updating the CV

Edit the CSVs in `_data/cv/` — `exhibitions`, `publications`, `curation`, `editor`, `awards`, `residencies`. Rows render in file order, so keep newest first. Fill `page` with an internal path (e.g. `/pulp`) to link the entry; leave it blank for plain text. In `exhibitions.csv`, `hidden=true` keeps a row in the record without showing it.

## Backlog

- Objects, Writings and Editor index pages, plus a nav linking them
- Home page: only show featured projects
- Home page projects to add: Diagrammatic Poems, Lunar Landscapes, Bocas, bamboo paper pulp stick piece

## Resources

- [HyperUI — free Tailwind UI elements](https://www.hyperui.dev/)
- [Setting up a digital garden with Jekyll](https://maximevaillancourt.com/blog/setting-up-your-own-digital-garden-with-jekyll)
- [Blank Jekyll site with Tailwind (2022)](https://mzrn.sh/2022/04/09/starting-a-blank-jekyll-site-with-tailwind-css-in-2022/)
- [Jekyll + Tailwind + Netlify](https://medium.com/@mauddev/jekyll-tailwind-netlify-9496352b49ee)
