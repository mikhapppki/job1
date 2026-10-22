#!/usr/bin/env bash
# Rapport systeme simple - projet job1
echo "=== Rapport systeme ==="
echo "Utilisateur : $(whoami)"
echo "Machine     : $(hostname)"
echo "Date        : $(date '+%Y-%m-%d %H:%M:%S')"
echo "Noyau       : $(uname -sr)"
echo "Uptime      : $(uptime -p 2>/dev/null || echo n/a)"
echo "Memoire     : $(free -h 2>/dev/null | awk '/^Mem:/{print $3" / "$2}' || echo n/a)"
echo "Disque /    : $(df -h / 2>/dev/null | awk 'NR==2{print $3" / "$2" ("$5" utilise)"}' || echo n/a)"
