#!/bin/bash

yay -S --noconfirm --needed xournalpp spotify capacities-appimage
# Copy over Omarchy applications
source omarchy-refresh-applications || true
