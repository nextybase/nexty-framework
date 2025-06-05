@echo off
echo === Assegnazione campi Sprint 1 ai task del progetto Rosetta ===

REM Project ID
set PROJECT_ID=PVT_kwHODNDtQc4A6zy8

REM Task: Installazione strumenti
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3E --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4dw --single-select-option-id e0bf9283
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3E --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4do --single-select-option-id 4ac70892
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3E --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4ds --single-select-option-id 3ce08a5d

REM Task: Clonazione repository
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3g --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4dw --single-select-option-id e0bf9283
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3g --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4do --single-select-option-id 4ac70892
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3g --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4ds --single-select-option-id 25605ab3

REM Task: Creazione modulo Rosetta
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3o --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4dw --single-select-option-id e0bf9283
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3o --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4do --single-select-option-id 4ac70892
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ3o --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4ds --single-select-option-id 3ce08a5d

REM Task: Integrazione con Neo4j
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ34 --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4dw --single-select-option-id e0bf9283
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ34 --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4do --single-select-option-id 4ac70892
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ34 --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4ds --single-select-option-id 25605ab3

REM Task: Test API
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ4I --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4dw --single-select-option-id e0bf9283
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ4I --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4do --single-select-option-id 4ac70892
gh project item-edit --id PVTI_lAHODNDtQc4A6zy8zgbMQ4I --project-id %PROJECT_ID% --field-id PVTSSF_lAHODNDtQc4A6zy8zgvS4ds --single-select-option-id 25499a2a

echo === Completato! Verifica i campi aggiornati su: https://github.com/users/nextybase/projects/4 ===
pause
