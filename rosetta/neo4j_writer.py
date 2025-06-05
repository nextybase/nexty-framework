# rosetta/neo4j_writer.py
"""
Modulo di supporto per la scrittura nel grafo Neo4j.
Collega i concetti estratti da Rosetta al database orientato ai grafi.
"""
from neo4j import GraphDatabase
import os

# Configurazione base (puoi anche usare variabili d'ambiente)
NEO4J_URI = os.getenv("NEO4J_URI", "bolt://neo4j:7687")
NEO4J_USER = os.getenv("NEO4J_USER", "neo4j")
NEO4J_PASSWORD = os.getenv("NEO4J_PASSWORD", "password")

class Neo4jWriter:
    def __init__(self):
        self.driver = GraphDatabase.driver(NEO4J_URI, auth=(NEO4J_USER, NEO4J_PASSWORD))

    def chiudi(self):
        self.driver.close()

    def scrivi_tripletta(self, soggetto, relazione, oggetto):
        """
        Crea nodi (se non esistono) e una relazione tra loro.
        """
        query = """
        MERGE (a:Concetto {nome: $soggetto})
        MERGE (b:Concetto {nome: $oggetto})
        MERGE (a)-[r:RELAZIONE {tipo: $relazione}]->(b)
        RETURN a, r, b
        """
        with self.driver.session() as session:
            result = session.run(query, soggetto=soggetto, relazione=relazione, oggetto=oggetto)
            record = result.single()
            return {
                "soggetto": record["a"]["nome"],
                "relazione": record["r"]["tipo"],
                "oggetto": record["b"]["nome"]
            }

# Test manuale (lanciabile da terminale)
if __name__ == "__main__":
    writer = Neo4jWriter()
    risposta = writer.scrivi_tripletta("Terra", "orbita", "Sole")
    print("Scrittura completata:", risposta)
    writer.chiudi()
