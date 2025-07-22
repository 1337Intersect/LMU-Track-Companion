# 📡 API Documentation

## WebSocket Endpoints

### Main Connection
```
ws://localhost:8765/ws
```

## Message Types

### Telemetry Update
```json
{
  "type": "telemetry_update",
  "telemetry": {
    "speed": 287.3,
    "rpm": 7850,
    "gear": 4,
    "throttle": 0.95,
    "brake": 0.0,
    "lap_time": 125.456
  },
  "coaching": {
    "message": "Brake now!",
    "priority": "urgent",
    "type": "brake"
  }
}
```

### Session Control
```json
{
  "type": "start_session",
  "config": {
    "track": "le_mans",
    "coaching_enabled": true
  }
}
```

### Server Status
```json
{
  "type": "server_status", 
  "status": "connected",
  "lmu_connected": true
}
```

## HTTP Endpoints

- `GET /` - Server info
- `GET /health` - Health check  
- `GET /stats` - Server statistics
