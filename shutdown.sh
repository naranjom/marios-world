#!/bin/bash
# This script is to update files on UNM Linux machine and synch
# with Dropbox & CARC at the end of the day



# Uncomment and add specific files as desired
#rsync -arvzh --delete --update $HOME/.emacs naranjom@wheeler.alliance.unm.edu:/users/naranjom/
# Sync to Dropbox
rsync -arvzh $HOME/Desktop/TutorialDocsPALM/ $HOME/Dropbox/Grad\ School/Thesis\ Material/PALM/TutorialDocsPALM
rsync -arvzh $HOME/org/ $HOME/Dropbox/org
# Sync to CARC
rsync -arvzh --update --delete $HOME/Desktop/TutorialDocsPALM/ naranjom@wheeler.alliance.unm.edu:/users/naranjom/OfficeUNM/TutorialDocsPALM
rsync -arvzh --update --delete $HOME/org/ naranjom@wheeler.alliance.unm.edu:/users/naranjom/org
