module OpenIconicHelper
  def open_iconic(svg_class, icon)
    icon = icon.to_s.gsub('_','-')
    svg_class = svg_class.to_s.gsub('_','-')

    icons = [
      "account-login", "account-logout", "action-redo", "action-undo",
      "align-center", "align-left", "align-right", "aperture", "arrow-bottom",
      "arrow-circle-bottom", "arrow-circle-left", "arrow-circle-right",
      "arrow-circle-top", "arrow-left", "arrow-right", "arrow-thick-bottom",
      "arrow-thick-left", "arrow-thick-right", "arrow-thick-top", "arrow-top",
      "audio", "audio-spectrum", "badge", "ban", "bar-chart", "basket",
      "battery-empty", "battery-full", "beaker", "bell", "bluetooth", "bold",
      "bolt", "book", "bookmark", "box", "briefcase", "british-pound",
      "browser", "brush", "bug", "bullhorn", "calculator", "calendar",
      "camera-slr", "caret-bottom", "caret-left", "caret-right", "caret-top",
      "cart", "chat", "check", "chevron-bottom", "chevron-left",
      "chevron-right", "chevron-top", "circle-check", "circle-x", "clipboard",
      "clock", "cloud", "cloud-download", "cloud-upload", "cloudy", "code",
      "cog", "collapse-left", "collapse-down", "collapse-right", "collapse-up",
      "command", "comment-square", "compass", "contrast", "copywriting",
      "credit-card", "crop", "dashboard", "data-transfer-download",
      "data-transfer-upload", "delete", "dial", "document", "dollar",
      "double-quote-sans-left", "double-quote-sans-right",
      "double-quote-serif-left", "double-quote-serif-right", "droplet", "eject",
      "elevator", "ellipses", "envelope-closed", "euro", "envelope-open",
      "excerpt", "expand-down", "expand-left", "expand-right", "expand-up",
      "external-link", "eye", "eyedropper", "file", "fire", "flag", "flash",
      "folder", "fork", "fullscreen-enter", "fullscreen-exit", "globe", "graph",
      "grid-four-up", "grid-three-up", "grid-two-up", "hard-drive", "header",
      "headphones", "heart", "image", "inbox", "home", "infinity", "info",
      "italic", "justify-center", "justify-left", "justify-right", "key",
      "laptop", "layers", "lightbulb", "link-broken", "link-intact", "list",
      "list-rich", "location", "lock-locked", "lock-unlocked", "loop",
      "loop-circular", "loop-square", "magnifying-glass", "map", "map-marker",
      "media-pause", "media-play", "media-record", "media-skip-backward",
      "media-skip-forward", "media-step-backward", "media-step-forward",
      "media-stop", "medical-cross", "menu", "microphone", "minus", "monitor",
      "moon", "move", "musical-note", "paperclip", "people", "pencil", "person",
      "phone", "pie-chart", "pin", "play-circle", "plus", "power-standby",
      "print", "project", "pulse", "puzzle-piece", "question-mark", "rain",
      "random", "reload", "resize-both", "resize-height", "resize-width", "rss",
      "rss-alt", "script", "share", "share-boxed", "shield", "signal",
      "signpost", "sort-ascending", "sort-descending", "spreadsheet", "star",
      "sun", "tablet", "tag", "tags", "target", "task", "terminal", "text",
      "thumb-up", "thumb-down", "timer", "transfer", "trash", "underline",
      "vertical-align-bottom", "vertical-align-center", "vertical-align-top",
      "volume-high", "video", "volume-low", "volume-off", "warning", "wifi",
      "wrench", "x", "yen", "zoom-in", "zoom-out"
    ]

    if icons.include? icon
      content_tag :svg, nil, class: svg_class, viewBox: '0 0 8 8' do
        concat content_tag(:use, nil, class: 'icon-' + icon, 'xlink:href' => asset_path('open-iconic.min.svg#' + icon))
      end
    else
      content_tag :div, "Icon #{icon} does not exist"
    end

  end
end
