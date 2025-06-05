@echo off
echo === Inizio creazione task Sprint 1: Setup Rosetta ===

REM Task Sprint 1 per Rosetta – Nexty Framework (project number 4)
gh project item-create 4 --title "Installazione strumenti: Git, VSCode, Python, Docker" --body "Verifica ambiente, installazioni guidate, testing base su CLI e VS Code."
gh project item-create 4 --title "Clonazione repository Nexty" --body "Clonare il repo GitHub https://github.com/nextybase/nexty-framework e configurare ambiente locale."
gh project item-create 4 --title "Creazione modulo Rosetta base" --body "Aggiunta struttura cartelle, file `app.py` iniziale, `requirements.txt` e Dockerfile funzionante."
gh project item-create 4 --title "Integrazione con Neo4j (locale)" --body "Settaggio container Neo4j nel docker-compose e test connessione base con Rosetta."
gh project item-create 4 --title "Test API REST con curl o REST Client" --body "Verificare risposta API POST /frase con payload esempio."

echo === Task Sprint 1 creati con successo! Verifica su: https://github.com/users/nextybase/projects/4 ===
pause
