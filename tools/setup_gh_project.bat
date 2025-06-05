@echo off
echo === Inizio configurazione campi Rosetta Project ===

REM === Step 1: Crea i campi con opzioni ===
gh project field-create 4 --name "Stato" --data-type SINGLE_SELECT --single-select-options "To Do,In Progress,Done"
gh project field-create 4 --name "Priorità" --data-type SINGLE_SELECT --single-select-options "Alta,Media,Bassa"
gh project field-create 4 --name "Sprint" --data-type SINGLE_SELECT --single-select-options "Sprint 1"

echo === Campi e opzioni creati con successo! ===

REM === Istruzione finale ===
echo.
echo *** Ora puoi assegnare i valori ai task usando gh project item-list e item-edit ***
echo *** Esempio: gh project item-edit ITEM_ID --field 'Sprint' --value 'Sprint 1' ***
echo.

pause
