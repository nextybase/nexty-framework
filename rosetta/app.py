# rosetta/app.py
from flask import Flask, request, jsonify
from neo4j_writer import Neo4jWriter

app = Flask(__name__)

# Inizializza il writer Neo4j
neo4j_writer = Neo4jWriter()

@app.route("/frase", methods=["POST"])
def analizza_frase():
    data = request.get_json()
    frase = data.get("frase", "")

    # Parsing semplice: assume "Soggetto relazione Oggetto"
    try:
        soggetto, relazione, oggetto = frase.split(" ", 2)
    except ValueError:
        return jsonify({"status": "errore", "errore": "Formato frase non valido. Usa: 'X relazione Y'"}), 400

    # Scrivi nel grafo
    risultato = neo4j_writer.scrivi_tripletta(soggetto, relazione, oggetto)

    return jsonify({
        "soggetto": risultato["soggetto"],
        "relazione": risultato["relazione"],
        "oggetto": risultato["oggetto"],
        "status": "ok"
    })

@app.route("/")
def home():
    return "Rosetta API è attiva."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
