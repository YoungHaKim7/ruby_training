# `ruby-lsp --doctor`

- `ruby-lsp --doctor` works perfectly — it resolved its own bundle from `.ruby-lsp/` and indexed `src/main.rb`. (The garbled bit at the very end was just my hand-crafted LSP test message being malformed, not a ruby-lsp issue.)

## Summary

**ruby-lsp needs no building.** It's a pure-Ruby gem and it's already installed and verified working. You were never actually missing ruby-lsp — Zed was just launching the *wrong* server.

The `"Could not locate Gemfile"` error came from Zed's Ruby extension defaulting to **`solargraph`** (which isn't installed), launched through `bundle exec`, which needs a root `Gemfile` your training project doesn't have.

**What I changed** — added a `Ruby` entry to `~/.config/zed/settings.json` that enables `ruby-lsp` and disables the uninstalled servers (`!solargraph`, `!sorbat`, `!steep`, etc.):

```json
"Ruby": {
  "language_servers": [
    "ruby-lsp",
    "!solargraph", "!sorbet", "!steep", "!rubocop", "!kanayago", "!fuzzy-ruby-server"
  ],
  "format_on_save": "on",
  "tab_size": 2
}
```

## Next step

**Restart Zed** (or reload the window) so it re-reads settings and starts ruby-lsp instead of solargraph. When you reopen `src/main.rb` you should get hover, completion, go-to-definition, and inline type hints.

A couple of notes for your training workflow:
- **`.ruby-lsp/` is auto-managed** by ruby-lsp (its own hidden Gemfile/lockfile). Leave it alone — it's already gitignored. That's the file ruby-lsp was complaining you didn't have, in a sense.
- If you ever want diagnostics + formatting/linting *on top of* ruby-lsp later, `rubocop` is the common companion (`gem install rubocop`), but ruby-lsp alone is plenty to start.
