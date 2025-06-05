@echo off
echo === Assegnazione campi Sprint 1 Rosetta ===

REM Imposta campo Sprint = Sprint 1, Stato = To Do, Priorità = Alta per tutti i task

gh project item-edit PVTI_lAHODNDtQc4A6zy8zgbMQ3E --field "Sprint" --value "Sprint 1" --owner nextybase
gh project item-edit PVTI_lAHODNDtQc4A6zy8zgbMQ3E --field "Stato" --value "To Do" --owner nextybase
gh project item-edit PVTI_lAHODNDtQc4A6zy8zgbMQ3E --field "Priorità" --value "Alta" --owner nextybase

gh project item-edit PVTI_lAHODNDtQc4A6zy8zgbMQ3g --field "Sprint" --value "Sprint 1" --owner nextybase
gh project item-edit PVTI_lAHODNDtQc4A6zy8zgbMQ3g --field "Stato" --value "To Do" --owner nextybase
gh project item-edit PVTI_lAHO_
