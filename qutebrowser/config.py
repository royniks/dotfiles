# ===============================
# Minimal qutebrowser config
# ===============================

# Load autoconfig (DO NOT REMOVE)
config.load_autoconfig()

# ---------- General ----------
c.auto_save.session = True
c.tabs.show = 'multiple'
c.tabs.position = 'top'
c.tabs.padding = {"top": 4, "bottom": 4, "left": 6, "right": 6}
c.tabs.indicator.width = 0

# ---------- Fonts ----------
c.fonts.default_family = 'monospace'
c.fonts.default_size = '10pt'
c.fonts.tabs.selected = '10pt monospace'
c.fonts.tabs.unselected = '10pt monospace'

# ---------- UI ----------
c.statusbar.show = 'in-mode'
c.statusbar.padding = {"top": 2, "bottom": 2, "left": 6, "right": 6}
c.statusbar.widgets = ['keypress', 'url', 'scroll']

c.completion.height = '30%'
c.completion.shrink = True

# ---------- Scrolling ----------
c.scrolling.smooth = True
c.scrolling.bar = 'never'

# ---------- Privacy ----------
c.content.autoplay = False
c.content.geolocation = False
c.content.notifications.enabled = False
c.content.media.audio_capture = False
c.content.media.video_capture = False
c.content.dns_prefetch = False

# ---------- Downloads ----------
c.downloads.position = 'bottom'
c.downloads.remove_finished = 5000

# ---------- Search Engines ----------
c.url.searchengines = {
    'DEFAULT': 'https://duckduckgo.com/html/?q={}',
    'g': 'https://www.google.com/search?q={}',
    'yt': 'https://www.youtube.com/results?search_query={}',
    'w': 'https://en.wikipedia.org/wiki/{}'
}

# ---------- Keybindings ----------
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('t', 'open -t')
config.bind('x', 'tab-close')
config.bind('X', 'undo')
config.bind(',r', 'config-source')

# ---------- Homepage ----------
c.url.start_pages = ['https://duckduckgo.com']
c.url.default_page = 'https://duckduckgo.com'

# ---------- User CSS (Gruvbox via Matugen) ----------
c.content.user_stylesheets = ['gruvbox2.css']

# ad-bloking 

c.content.blocking.enabled = True
c.content.blocking.method = 'both'
c.content.blocking.adblock.lists = [
    # EasyList (ads)
    'https://easylist.to/easylist/easylist.txt',

    # EasyPrivacy (trackers)
    'https://easylist.to/easylist/easyprivacy.txt',

    # uBlock filters (extra)
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt',

    # Malware / bad domains
    'https://malware-filter.gitlab.io/malware-filter/urlhaus-filter.txt',
]

# Show status bar when needed
c.statusbar.show = 'in-mode'

# Enable progress indicator
c.statusbar.widgets = ['progress', 'url', 'scroll']


