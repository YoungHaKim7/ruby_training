# ruby_training

- https://www.ruby-lang.org/en/

# ruby playground
- https://try.ruby-lang.org/playground/

# openSUSE Install(260808)

```bash
sudo zypper refresh

# install 
sudo zypper install ruby ruby-devel git gcc make libopenssl-devel

```

# openSUSE ruby-lsp Install(260808)

```bash
$ sudo gem install ruby-lsp

Fetching ruby-lsp-0.26.10.gem
Fetching language_server-protocol-3.17.0.6.gem
Successfully installed language_server-protocol-3.17.0.6
Successfully installed ruby-lsp-0.26.10
Parsing documentation for language_server-protocol-3.17.0.6
Installing ri documentation for language_server-protocol-3.17.0.6
Parsing documentation for ruby-lsp-0.26.10
Installing ri documentation for ruby-lsp-0.26.10
Done installing documentation for language_server-protocol, ruby-lsp after 1 seconds
2 gems installed

A new release of RubyGems is available: 4.0.16 → 4.0.18!
Run `gem update --system 4.0.18` to update your installation.

```

- `gem update --system 4.0.18`

```bash
$ sudo gem update --system 4.0.18
Fetching rubygems-update-4.0.18.gem
Successfully installed rubygems-update-4.0.18
Parsing documentation for rubygems-update-4.0.18
Installing ri documentation for rubygems-update-4.0.18
Done installing documentation for rubygems-update after 0 seconds
Parsing documentation for rubygems-update-4.0.18
Done installing documentation for rubygems-update after 0 seconds
Installing RubyGems 4.0.18
  Successfully built RubyGem
  Name: bundler
  Version: 4.0.18
  File: bundler-4.0.18.gem
Bundler 4.0.18 installed
RubyGems 4.0.18 installed
Regenerating binstubs
Regenerating plugins
Parsing documentation for rubygems-4.0.18
Installing ri documentation for rubygems-4.0.18

## 4.0.18 / 2026-08-05

### Enhancements:

* Check the resolved parent directory before extracting old format gems. Pull request [#9755](https://github.com/ruby/rubygems/pull/9755) by hsbt
* Installs bundler 4.0.18 as a default gem.

### Bug fixes:

* Call Kernel.format explicitly in Gem::Deprecate wrapper. Pull request [#9714](https://github.com/ruby/rubygems/pull/9714) by hsbt

### Documentation:

* Point bundler.io URLs at guides.rubygems.org. Pull request [#9737](https://github.com/ruby/rubygems/pull/9737) by hsbt

## 4.0.17 / 2026-07-22

### Enhancements:

* Validate spec name before writing to the spec cache. Pull request [#9690](https://github.com/ruby/rubygems/pull/9690) by hsbt
* Installs bundler 4.0.17 as a default gem.

### Bug fixes:

* Unquote Gem.ruby when spawning it as a separate argv element. Pull request [#9695](https://github.com/ruby/rubygems/pull/9695) by hsbt
* Escape glob metacharacters in install paths when globbing. Pull request [#9687](https://github.com/ruby/rubygems/pull/9687) by hsbt
* Preserve Windows editor paths in gem open and bundle open. Pull request [#9694](https://github.com/ruby/rubygems/pull/9694) by hsbt
* Preserve Windows paths in MAKE and rake environment variables. Pull request [#9693](https://github.com/ruby/rubygems/pull/9693) by hsbt
* Fix `bundle` binstub broken by `gem update --system` on Homebrew ruby. Pull request [#9688](https://github.com/ruby/rubygems/pull/9688) by hsbt


------------------------------------------------------------------------------

RubyGems installed the following executables:
        /usr/bin/gem
        /usr/bin/bundle
        /usr/bin/bundler

Ruby Interactive (ri) documentation was installed. ri is kind of like man
pages for Ruby libraries. You may access it like this:
  ri Classname
  ri Classname.class_method
  ri Classname#instance_method
If you do not wish to install this documentation in the future, use the
--no-document flag, or set it as the default in your ~/.gemrc file. See
'gem help env' for details.

RubyGems system software updated

```

# ruby-lsp

```bash
$ sudo ruby-lsp

Ruby LSP> Skipping lockfile copies because there's no top level bundle
Ruby LSP> Running bundle install for the composed bundle. This may take a while...
Ruby LSP> Command: ((/usr/bin/ruby.ruby4.0 /usr/bin/bundle check && /usr/bin/ruby.ruby4.0 /usr/bin/bundle update ruby-lsp debug prism rbs) || /usr/bin/ruby.ruby4.0 /usr/bin/bundle install) 1>&2
Resolving dependencies...
The Gemfile's dependencies are satisfied
Fetching gem metadata from https://rubygems.org/........
Resolving dependencies...
Resolving dependencies...
Fetching prettyprint 0.2.0
Fetching pp 0.6.4 (was 0.6.3)
Fetching erb 6.0.7 (was 6.0.1.1)
Fetching tsort 0.2.0
Fetching rbs 4.1.2 (was 3.10.0)
Fetching io-console 0.8.2
Fetching reline 0.7.0 (was 0.6.3)
Fetching irb 1.18.0 (was 1.16.0)
Fetching prism 1.9.0 (was 1.8.1)
Fetching rdoc 8.0.0 (was 7.0.4)
Installing tsort 0.2.0
Installing pp 0.6.4 (was 0.6.3)
Installing prettyprint 0.2.0
Installing erb 6.0.7 (was 6.0.1.1) with native extensions
Installing io-console 0.8.2 with native extensions
Installing reline 0.7.0 (was 0.6.3)
Installing irb 1.18.0 (was 1.16.0)
Installing rdoc 8.0.0 (was 7.0.4)
Installing prism 1.9.0 (was 1.8.1) with native extensions
Installing rbs 4.1.2 (was 3.10.0) with native extensions
Bundler attempted to update ruby-lsp but its version stayed the same
Bundler attempted to update debug but its version stayed the same
Bundle updated!

```
