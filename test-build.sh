#!/usr/bin/env bash

clear
flatpak-builder --repo=testing-repo --force-clean build-dir com.github.xournalpp.xournalpp.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify xpp-testing-repo testing-repo
flatpak --user install xpp-testing-repo com.github.xournalpp.xournalpp -y
flatpak --user install xpp-testing-repo com.github.xournalpp.xournalpp.Debug -y
flatpak update -y

