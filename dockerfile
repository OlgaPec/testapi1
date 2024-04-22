# Použijeme oficiální obraz Pythonu z Docker Hubu
FROM python:3.9

# Nastav pracovní adresář v kontejneru
WORKDIR /app

# Zkopíruj zdrojové soubory do pracovního adresáře v kontejneru
COPY . .

# Nainstaluj potřebné závislosti
RUN pip install --no-cache-dir -r requirements.txt

# Spusť příkaz při spuštění kontejneru
CMD [ "python", "./app.py" ]
