# 🔧 Risoluzione Problemi

## ❌ Problemi Comuni

### Server non si avvia
- Controlla che Python sia installato: `python --version`
- Installa dipendenze: `pip install -r requirements.txt`
- Verifica porta libera: `netstat -an | findstr :8765`

### LMU non invia telemetria
1. Verifica plugin installato in `LMU/Plugins/rFactor2SharedMemoryMapPlugin64.dll`
2. Controlla configurazione in `LMU/UserData/player/CustomPluginVariables.JSON`
3. Riavvia LMU dopo installazione plugin

### App mobile non si connette
1. **Stessa rete Wi-Fi**: PC e telefono devono essere sulla stessa rete
2. **IP corretto**: Verifica IP in `config/mobile_config.json`
3. **Firewall**: Controlla che porta 8765 sia aperta
4. **Test connessione**: Prova `http://TUO_IP:8765` nel browser

### Nessun audio coaching
- Windows: Installa `pip install pywin32`
- Verifica TTS: `python -c "import pyttsx3; pyttsx3.speak('test')"`
- Controlla volume sistema

## 🐛 Debug Mode

Aggiungi in `config/server_config.json`:
```json
{
  "logging": {
    "level": "DEBUG",
    "console": true
  }
}
```

## 📞 Supporto Avanzato

Se i problemi persistono:
1. Raccogli log da `logs/server.log`  
2. Nota versioni: Python, Node.js, LMU
3. Crea issue su GitHub con dettagli
