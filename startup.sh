#!/bin/bash
# This script is to update files on UNM Linux machine and synch
# with CARC

sudo apt-get upgrade
sudo apt autoremove
conda update -n base conda
conda update anaconda

# Uncomment and add specific files as desired
# rsync -arvzh --delete --update $HOME/Desktop/TutorialDocsPALM/ naranjom@wheeler.alliance.unm.edu:/users/naranjom/OfficeUNM/TutorialDocsPALM

rsync -arvzh naranjom@wheeler.alliance.unm.edu:/users/naranjom/org/ $HOME/org
rsync -arvzh naranjom@wheeler.alliance.unm.edu:/users/naranjom/synced_notebooks/ $HOME/Dropbox/Grad\ School/Thesis\ Material/Misc./
rsync -arvzh naranjom@wheeler.alliance.unm.edu:/users/naranjom/palm/current_version/JOBS $HOME/Dropbox/Grad\ School/Thesis\ Material/PALM/
