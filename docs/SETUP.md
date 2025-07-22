# 📋 Setup Dettagliato

## 1. Prerequisiti

### Software Richiesto
- **Python 3.9+** 
- **Node.js 16+**
- **Le Mans Ultimate** (Steam)
- **Expo Go** app (mobile)

### Hardware Raccomandato
- **PC**: Windows 10+ con 8GB RAM
- **Mobile**: Android 8+ o iOS 12+
- **Rete**: Wi-Fi stabile

## 2. Installazione Backend

```bash
cd server
pip install -r requirements.txt
python lmu_websocket_server.py  # Test
```

## 3. Setup Mobile

```bash  
cd mobile
npm install
npx expo start
```

## 4. Plugin LMU

1. Scarica `rFactor2SharedMemoryMapPlugin64.dll`
2. Copia in `LMU/Plugins/`
3. Modifica `CustomPluginVariables.JSON`:
```json
{
  "rFactor2SharedMemoryMapPlugin64.dll": {
    "Enabled": 1
  }
}
```

## 5. Test Completo

1. Avvia LMU
2. Avvia server: `python server/lmu_websocket_server.py` 
3. Avvia mobile: `npx expo start` in `mobile/`
4. Connetti app mobile
5. Inizia sessione practice in LMU
6. Verifica coaching nell'app
