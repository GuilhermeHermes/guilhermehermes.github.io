# Agent Guide - GuilHermes Blog & Portfolio

This file serves as a guide for AI agents (vibe coding) to understand and work on this project.

## 📋 Project Overview

- **Name:** GuilHermes - Personal Blog and Portfolio
- **Framework:** Hugo (Static Site Generator)
- **Theme:** Hextra (imported as Go module)
- **Deploy:** GitHub Pages (via GitHub Actions)
- **Main language:** Markdown for content
- **Configuration:** YAML

## 🏗️ Project Structure

```
hextra-starter-template/
├── hugo.yaml              # Main Hugo configuration
├── go.mod                 # Go modules (Hextra theme)
├── go.sum                 # Go modules checksums
├── content/               # All site content
│   ├── _index.md          # Homepage
│   ├── about.md           # About page
│   └── docs/              # Documentation/blog section
│       ├── _index.md      # Docs section index
│       └── ...            # Posts and articles
├── public/                # Generated build (do not edit)
├── static/                # Static files (create when needed)
│   └── images/            # Images folder (optional)
├── .github/workflows/     # GitHub Actions for deploy
│   └── pages.yaml         # Deploy workflow
└── netlify.toml           # Alternative Netlify config
```

**Note:** The `static/` folder doesn't exist by default. Create it when you need to add static files like images or custom CSS.

## 🎯 Content Areas

### Homepage (`content/_index.md`)
- Main landing page
- Navigation cards
- Uses Hextra shortcodes: `{{< cards >}}`, `{{< card >}}`

### About (`content/about.md`)
- Author's personal information
- Special type: `type: about`

### Docs/Blog (`content/docs/`)
- Technical articles and posts
- Supports subfolders for organization
- Automatic navigation via `next:` and `prev:` in frontmatter

## 📝 How to Create New Content

### New Post/Article

```markdown
---
title: Post Title
date: 2026-01-12
weight: 1  # menu order (lower = first)
---

Content here...
```

### New Section/Category

Create folder with `_index.md`:

```markdown
---
title: Section Name
weight: 1
---

Section description...
```

## ⚙️ Main Configuration (hugo.yaml)

### Main Menu
```yaml
menu:
  main:
    - name: Name
      pageRef: /path   # internal page
      # or
      url: "https://..." # external link
      weight: 1        # order
      params:
        icon: github   # optional icon
```

### Available Icons
- `github`, `linkedin`, `twitter`, `book-open`, `user`, `search`
- More at: https://imfing.github.io/hextra/docs/guide/shortcodes/

## 🖼️ Useful Hextra Shortcodes

### Cards
```markdown
{{< cards >}}
  {{< card link="/docs" title="Docs" icon="book-open" >}}
{{< /cards >}}
```

### Callouts
```markdown
{{< callout type="info" >}}
Important information
{{< /callout >}}
```

### Tabs
```markdown
{{< tabs items="Tab1,Tab2" >}}
  {{< tab >}}Content 1{{< /tab >}}
  {{< tab >}}Content 2{{< /tab >}}
{{< /tabs >}}
```

### Code with Filename
````markdown
```python {filename="example.py"}
print("Hello World")
```
````

## 🚀 Development Commands

```bash
# Install dependencies
hugo mod tidy

# Local server (http://localhost:1313)
hugo server --logLevel debug --disableFastRender -p 1313

# Production build
hugo --gc --minify

# Update theme
hugo mod get -u
hugo mod tidy
```

## 🌐 Deploy to GitHub Pages

1. Push to `main` branch
2. GitHub Actions runs automatically (`.github/workflows/pages.yaml`)
3. Site published at: `https://[username].github.io/[repo-name]/`

### Required GitHub Settings:
- Settings → Pages → Source: **GitHub Actions**

## 📦 Dependencies

- **Hugo:** v0.147.9+ (extended)
- **Go:** 1.24+
- **Hextra Theme:** v0.11.1+

## 💡 Tips for AI Agents

1. **Content goes in `/content/`** - always in Markdown
2. **Do not edit `/public/`** - it's auto-generated
3. **Images** - create `/static/images/` folder when needed, referenced as `/images/...`
4. **Configuration in `hugo.yaml`** - not `.toml`
5. **YAML frontmatter** - delimited by `---`
6. **Menu order** - controlled by `weight` (lower = first)
7. **Create folders as needed** - `static/`, `layouts/`, etc. are optional

## 🎨 Visual Customization

##Create `/static/css/custom.css` if you need additional styles
- Theme uses `/public/css/` for built files (don't edit)

### Logo
1. Create `/static/images/` folder
2. Add your logo file there
3. Add to `/static/` 
- Configure in `hugo.yaml`:
```yaml
params:
  navbar:
    displayLogo: true
    logo:
      path: images/logo.png
```

## 📞 Project Links

- **GitHub:** https://github.com/GuilHermes
- **LinkedIn:** https://www.linkedin.com/in/guilherme-hermes-008408210/
- **Hextra Theme:** https://imfing.github.io/hextra/

---

*Last updated: January 2026*
