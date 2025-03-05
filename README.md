# Life in Weeks

This is an interactive map of my life, where each week I've been alive is a little box. The box's border color represents where I was living, the fill color what I was doing. Tap a box to see what I was doing where that week.

I made this to help myself see the bigger picture of the road I've walked.

Read more about [Life in Weeks at Wait But Why](https://waitbutwhy.com/2014/05/life-weeks.html).

This code was copied and adapted from [Buster Benson](https://busterbenson.com/life-in-weeks). It is a single webpage statically-rendered with [Hugo](https://gohugo.io/) hosted on Vercel. It consists of two [data](data/events.yml) [files](data/colors.yml), [an introduction](content/index.md), and a [template](layouts/_default/index.html).

## 🚀 Setup

1. Install Hugo:
   ```sh
   brew install hugo  # Mac
   ```
2. Clone and run locally:
```sh
    git clone https://github.com/ginatrapani/life-in-weeks.git
    cd life-in-weeks
    hugo server -D
```
3. Visit [http://localhost:1313/](http://localhost:1313/).

## Running in GitHub Codespaces

Codespaces installs some random version of hugo that will likely not be compatible with this site. To install the correct version, specify it in the `devcontainer.json` file:

```json
	"features": {
		"ghcr.io/devcontainers/features/hugo:1": {
			"extended": true,
			"version": "0.143.1"
		}
	}
```

When running this Hugo site in GitHub Codespaces, use the following command to properly serve the site with styling:

```bash
hugo serve --baseURL="https://${CODESPACE_NAME}-80.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/" --appendPort=false
```

This prevents port mapping issues that can break CSS and other static assets when Codespaces remaps Hugo's default port.

For convenience, you can use the provided script:

```bash
bash codespace-serve.sh
```

## ✨ Customize

- `content/` → Page content
- `layouts/` → Templates
- `assets/scss/` → Styles
- `assets/imgs/` → Site-wide images
- `static/` → Unprocessed assets
- `hugo.toml` → Site settings

## Colophon

This page uses [Bootstrap](https://getbootstrap.com/) for layout and interaction, and a smidge of [jQuery](https://jquery.com/) to reflect the current week on the map.

The font is [Red Hat Display](https://fonts.google.com/specimen/Red+Hat+Display). Colors chosen via [Color Hunt](https://colorhunt.co/). Edited in [Zed](https://zed.dev).

## More Life in Weeks

There are several neat Life in Weeks examples and tools, including:

- [Weeksofyour.life](https://www.weeksofyour.life/): Make your own, completely browser-based
- [Life Calendar](https://lifecalendar.io): Make your own, with multiple layers
- [My Life in Days](https://days.sonnet.io/): Beautiful refactor, by days

🍯 “I always get to where I am going by walking away from where I have been.” – Winnie the Pooh
