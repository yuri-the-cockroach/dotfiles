# No idea if it works it "should", but I didn't test it yet.
mkdir ~/git
IFS='/'
GITROOT="~/git"
GITBASE="git@gitlab.com:"
TOPULL=[ "lutzgebelman/nvim-conf" "lutzgebelman/kitty-conf" "lutzgebelman/hypr-conf" "lutzgebelman/firefox-conf" ]
for REPO in $TOPULL; do
    read -A SPLITED <<< $REPO
    BASENAME=SPLITED[2]
    git clone "$GITBASE$REPO" $BASENAME
done
