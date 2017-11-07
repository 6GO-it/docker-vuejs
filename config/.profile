# Remove the needs of sudores when using npm global install
# Thanks to @julianxhokaxhiu for the hint
# https://github.com/julianxhokaxhiu

NPM_PACKAGES="${HOME}/node_modules"
PATH="$NPM_PACKAGES/.bin:$PATH"

# Use this way to configure NPM in order to avoid pushing .npmrc by mistake with token credentials
export NPM_CONFIG_PREFIX=${NPM_PACKAGES}

# Inherit man files from the NPM packages folder
export MANPATH="$NPM_PACKAGES/share/man:/usr/local/man:$MANPATH"