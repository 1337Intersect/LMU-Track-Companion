#!/bin/bash
echo "🚀 Starting LMU Track Learning Companion..."

# Avvia server in background
echo "📡 Starting server..."
cd server
python3 lmu_websocket_server.py &
SERVER_PID=$!
cd ..

# Aspetta che il server si avvii
sleep 3

# Avvia app mobile
echo "📱 Starting mobile app..."
cd mobile
npx expo start &

echo "✅ Server and mobile app are starting..."
echo "🛑 Press Ctrl+C to stop all services"

# Aspetta e cleanup
wait $SERVER_PID