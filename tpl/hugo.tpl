baseurl = "https://alisonjoe.github.io/"
metaDataFormat = "yaml"
title = "Blist Multilingual Theme"
theme = "blist"

DefaultContentLanguage = "en"
DefaultContentLanguageInSubdir = true
[languages]
  [languages.en]
    contentDir = "content/" #English
    weight = 1
    languageName = "English"
    [languages.en.params]
      introTitle = "{{last_title}}"
      introSubtitle = "{{last_desc}}"
      introPhoto = "{{last_wallpaper}}"
      logo = "/blist-logo.png"
    [[languages.en.menu.main]]
        name = "Blog"
        url = "blog"
        weight = 1

    [[languages.en.menu.main]]
        name = "About"
        url = "page/about/"
        weight = 2

    [[languages.en.menu.main]]
        name = "Tags"
        url = "tags"
        weight = 3

[params]
  # Enable the darkmode toggle in header
  darkModeToggle = true
  
  # Enable search in header
  enableSearch = true

  # Option to customize the search parameters of a page
  # Below are the supported options; Note that including entire content
  # may slowdown the loading of search results
  # Title of page is included by default
  searchKeys = [
    "tags",
    "date",
    "categories",
    "summary",
    "content",
    "link",
    "author"
  ]

  # Custom copyright - optional
  copyright = "Copyright © 2024 - alisonLai · All rights reserved"
  favicon = "/favicon.svg"

  # Color for the intro details and social links block, not applicable for dark mode
  # Supported values: Any color from TailwindCSS default colors
  # Reference: https://tailwindcss.com/docs/customizing-colors
  ascentColor = "bg-blue-100"

  # The page bundle that is shown on the front page
  frontBundle = "blog"

  # Used to hide the post metadata such as posted date, reading time and word count
  # Can be used at site level or page level
  hideMeta = false

  # To hide "Other languages" option if the post is available in multiple languages
  # Can be used at site level or page level
  hideOtherLanguages = false

  # Add support for Table of contents
  # Can be added to a page level also in markdown frontmatter
  toc = true

  # Hides the thumbnail in post view
  # Thumbnails in home and blog pages will still be shown
  # This setting can also be in page's markdown file
  hidePageThumbnail = false

# Comments system
[params.comments]
  # Supports disqus, giscus and utterances
  # Check hugo docs for setting up disqus
  system = "giscus"

  # Options for giscus, exclude hyphens
  repo = ""
  repoid = ""
  category = ""
  categoryid = ""
  mapping = ""
  strict = ""
  reactionsenabled = ""
  emitmetadata = ""
  inputposition = ""
  theme = ""


[[menu.main]]
  name = "About"
  url = "/about"

[build]
  writeStats = true

[outputs]
  home = ["HTML", "RSS", "JSON"]

# syntax highlight settings
[markup]
  [markup.highlight]
    style = "dracula"
  [markup.goldmark.renderer]
    # Enable to include inline HTML
    unsafe = true
