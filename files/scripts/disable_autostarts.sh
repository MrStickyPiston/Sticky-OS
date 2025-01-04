#!/usr/bin/env bash
set -oue pipefail

# Disable autostarting geoclue demo agent
echo 'Hidden=true' >> /etc/xdg/autostart/geoclue-demo-agent.desktop

# Disable autostarting discover notifications
echo 'Hidden=true' >> /etc/xdg/autostart/org.kde.discover.notifier.desktop