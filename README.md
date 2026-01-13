# 🚀 GuilHermes Blog & Portfolio

Personal blog and portfolio built with [Hugo](https://gohugo.io) and the [Hextra](https://imfing.github.io/hextra) theme.

[![Deploy](https://github.com/GuilHermes/guilhermehermes.github.io/workflows/Deploy%20Hugo%20site%20to%20Pages/badge.svg)](https://github.com/GuilHermes/guilhermehermes.github.io/actions)

🔗 **Live Site:** [guilhermehermes.github.io](https://guilhermehermes.github.io)

---

## 📋 Table of Contents

- [Features](#-features)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Creating Content](#-creating-content)
- [Scripts](#-scripts)
- [Customization](#-customization)
- [Deploy](#-deploy)

---

## ✨ Features

- ⚡ **Fast & Modern** - Built with Hugo (static site generator)
- 🎨 **Beautiful UI** - Using Hextra theme with Tailwind CSS
- 📱 **Responsive** - Works perfectly on all devices
- 🌙 **Dark Mode** - Automatic theme switching
- 🔍 **Search** - Built-in search functionality
- 📝 **Blog System** - Organized posts with tags and pagination
- 🚀 **GitHub Pages** - Automatic deployment via GitHub Actions

---

## 📁 Project Structure

```
hextra-starter-template/
├── .github/
│   └── workflows/
│       └── pages.yaml         # GitHub Actions deploy workflow
│
├── assets/
│   └── css/
│       └── custom.css         # Custom CSS styles
│
├── content/                   # All site content (Markdown)
│   ├── _index.md             # Homepage
│   ├── about.md              # About page
│   └── posts/                # Blog posts
│       ├── _index.md         # Posts index page
│       └── my-first-post.md  # Example post
│
├── layouts/                   # Custom templates (override Hextra)
│   ├── partials/
│   │   ├── tags.html         # Custom tags partial
│   │   └── utils/
│   │       └── page-description.html  # Page description helper
│   └── posts/
│       └── list.html         # Posts listing template
│
├── scripts/
│   └── dev.sh                # Helper scripts for development
│
├── hugo.yaml                 # Hugo configuration
├── go.mod                    # Go modules (Hextra theme)
├── go.sum                    # Go modules checksums
├── AGENTS.md                 # AI agents guide
└── README.md                 # This file
```

---

## Getting Started

### Prerequisites

- **Hugo Extended** v0.147.9+ ([Download](https://gohugo.io/installation/))
- **Go** check mise.toml ([Download](https://go.dev/dl/))

### Installation

1. **Clone the repository**

```bash
git clone https://github.com/GuilHermes/guilhermehermes.github.io.git
cd guilhermehermes.github.io
```

2. **Install dependencies**

```bash
hugo mod tidy
```

3. **Run development server**

```bash
hugo server --logLevel debug --disableFastRender -p 1313
```

4. **Open in browser**

Visit: [http://localhost:1313](http://localhost:1313)

---

## 📝 Creating Content

### Create a New Post

#### Using Script (Recommended)

```bash
./scripts/dev.sh new-post <My Post Title>
```

This creates a new post at `content/posts/my-post-title.md` with frontmatter.

#### Manual Creation

Create `content/posts/my-post.md`:

```markdown
---
title: "My Post Title"
date: 2026-01-13T10:00:00-03:00
draft: false
description: "Post description here"
tags:
  - hugo
  - blog
---

Your content here...
```

### Frontmatter Options

| Field | Type | Description | Required |
|-------|------|-------------|----------|
| `title` | string | Post title | ✅ Yes |
| `date` | datetime | Publication date | ✅ Yes |
| `draft` | boolean | Draft status (true = not published) | No |
| `description` | string | Post summary/description | No |
| `tags` | array | Post tags | No |
| `weight` | number | Menu order (lower = first) | No |

### Create a New Page

```bash
hugo new about.md
```

Or create manually in `content/about.md`.

---

## 🛠️ Scripts

### Development Script (`scripts/dev.sh`)

**Create new post:**

```bash
./scripts/dev.sh new-post "Post Title"
```

**Features:**
- Auto-generates slug from title
- Creates file with proper frontmatter
- Adds current timestamp
- Creates `content/posts/` directory if needed

**Make executable:**

```bash
chmod +x scripts/dev.sh
```

---

## 🎨 Customization

### Custom CSS

Edit [`assets/css/custom.css`](assets/css/custom.css) to add your own styles:

```css
/* Custom styles */
.my-class {
  color: red;
}

/* Customize Hextra components */
.hextra-card:hover {
  transform: translateY(-2px);
}

/* Dark mode styles */
.my-class:is(html[class~="dark"] *) {
  color: blue;
}
```

### Custom Templates

Override Hextra templates by creating files in [`layouts/`](layouts):

```
layouts/
├── partials/          # Override partials
│   └── tags.html      # Custom tags display
└── posts/
    └── list.html      # Custom posts listing
```

### Configuration

Edit [`hugo.yaml`](hugo.yaml) to customize:

- **Site title:** `title: GuilHermes`
- **Menu items:** Under `menu.main`
- **Blog settings:** Under `params.blog.list`
- **Theme settings:** Under `params`

Example menu item:

```yaml
menu:
  main:
    - name: Blog
      pageRef: /posts
      weight: 1
```

---

## 🚀 Deploy

### GitHub Pages (Automatic)

The site deploys automatically to GitHub Pages when you push to `main` branch.

**Setup:**

1. **GitHub Repository Settings:**
   - Go to: `Settings → Pages`
   - Source: **GitHub Actions**
   - Enforce HTTPS: ✅ Enabled

2. **Configuration:**
   - The workflow is at [`.github/workflows/pages.yaml`](.github/workflows/pages.yaml)
   - Make sure [`hugo.yaml`](hugo.yaml) has correct `baseURL`

3. **Deploy:**

```bash
git add .
git commit -m "Update content"
git push origin main
```

4. **Check Status:**
   - Go to: `Actions` tab in GitHub
   - Wait ~2-3 minutes for build
   - Visit: `https://guilhermehermes.github.io`

---

## 📚 Resources

- **Hugo Documentation:** [gohugo.io/documentation](https://gohugo.io/documentation/)
- **Hextra Theme:** [imfing.github.io/hextra](https://imfing.github.io/hextra)
- **Hextra GitHub:** [github.com/imfing/hextra](https://github.com/imfing/hextra)
- **Hugo Templates:** [gohugo.io/templates](https://gohugo.io/templates/)
- **Go Template Syntax:** [pkg.go.dev/text/template](https://pkg.go.dev/text/template)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 👤 Author

**Guilherme Hermes**

- GitHub: [@GuilHermes](https://github.com/GuilHermes)
- LinkedIn: [guilherme-hermes](https://www.linkedin.com/in/guilherme-hermes-008408210/)

---

## Contributing

Contributions, issues, and feature requests are welcome!

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

