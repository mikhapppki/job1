#!/usr/bin/env bash
# Rapport systeme simple - projet job1
echo "=== Rapport systeme ==="
echo "Utilisateur : $(whoami)"
echo "Machine     : $(hostname)"
echo "Date        : $(date '+%Y-%m-%d %H:%M:%S')"
echo "Noyau       : $(uname -sr)"
echo "Uptime      : $(uptime -p 2>/dev/null || echo n/a)"
