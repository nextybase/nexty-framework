🛠 Tools - Utility Script per Rosetta (Nexty Framework)
Questa cartella contiene script batch (.bat) per automatizzare e semplificare la gestione del progetto Rosetta all'interno del framework modulare NeXT.

Sono progettati per supportare membri del team non tecnici nel setup del progetto GitHub, nella creazione di sprint, e nel tracciamento delle attività.

📄 Script disponibili
1. setup_gh_project.bat
Crea un nuovo progetto GitHub Project (v2) con titolo e proprietario specificato. Deve essere eseguito solo una volta per inizializzare il progetto Rosetta.

Requisiti:

gh CLI autenticata

Token GitHub con permessi project, repo, read:org

2. create_task_sprint1.bat
Popola automaticamente il progetto con i task dello Sprint 1: Setup Rosetta. Ogni attività viene creata come Draft Issue.

Task inclusi:

Installazione strumenti

Clonazione repo

Setup base modulo Rosetta

Integrazione Neo4j

Test API REST

3. assign_fields_sprint1.bat
Assegna i campi Sprint, Stato e Priorità ai task creati in precedenza, sfruttando gli ID prelevati con:

bash
Copia
Modifica
gh project item-list <project-id> --owner <owner> --format json > items.json
⚠️ Solo necessario in ambienti non inizializzati tramite setup_sprint1_rosetta.bat.

4. mark_done.bat
Aggiorna lo stato dei task completati segnandoli come Done nel campo Stato del progetto GitHub.

Utilizzo tipico:
Alla fine dello sprint per chiudere formalmente i task completati.

✅ Requisiti minimi
🐙 GitHub CLI (gh) installata

🔑 Token GitHub autorizzato (scopes: project, repo, read:org)

🌐 Connessione internet attiva

💻 Uso consigliato da Git Bash o PowerShell (Windows)

💼 Scenari d'uso
Primo setup del progetto Rosetta

Onboarding di nuovi membri

Reset o ripartenza di sprint

Tracciamento sprint a basso sforzo manuale

📌 Raccomandazioni
Conserva questi script nella cartella /tools del repository

Versionali in Git per mantenere tracciabilità

Evita di rieseguirli se il progetto è già attivo e popolato