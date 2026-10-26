# Personal site

Plain HTML, one stylesheet, no build step. Hosted on GitHub Pages.

## Layout

```
index.html        home: intro, links, hobbies
notes.html        course notes, one table per term
research.html     research + course projects
tutoring.html     tutoring info + problem sets
reading.html      self-study list
now.html          what you're doing this term
404.html          served for any missing URL (uses absolute paths for that reason)
style.css         all styling; colours and widths are variables at the top
cv/cv.pdf         your CV                                  (add the file)
notes/<course>-<term>/notes.pdf   one folder per course   (add the files)
problem-sets/<topic>.pdf          tutoring problem sets   (add the files)
.nojekyll         tells GitHub Pages to serve the files as-is
```

## Publish

1. On GitHub, create a public repository named `zhayittttt-cmyk.github.io` (your actual username).
2. In this folder:

   ```sh
   git init
   git add .
   git commit -m "Initial site"
   git branch -M main
   git remote add origin git@github.com:zhayittttt-cmyk/zhayittttt-cmyk.github.io.git
   git push -u origin main
   ```

3. On the repository page: Settings → Pages → Build and deployment → Source: "Deploy from a branch", Branch: `main`, folder `/ (root)`. Save.
4. The site is at `https://zhayittttt-cmyk.github.io` within a couple of minutes. Every later `git push` republishes it.

## Before publishing

- Add the PDFs listed under Layout; every PDF link on the notes and tutoring pages expects one.

## Conventions

- Folder and file names: lowercase, no spaces, no `&` (they become `%20` and `%26` in URLs). Course folders are `<code>-<term>`: `math570-f26`, `comp252-w26`.
- When you update a PDF, change the "Updated" cell in its row.
- Keep each PDF under ~25 MB. GitHub refuses files over 100 MB and wants the whole repository under 1 GB.
- Only post material you wrote yourself.

## Later

- Custom domain: buy one, add it under Settings → Pages → Custom domain, and point the domain's DNS at GitHub as the settings page describes. HTTPS is handled for you.
- If the shared header/footer becomes a pain to keep in sync across pages, that's the point to move to Hugo. The content carries over as-is.
