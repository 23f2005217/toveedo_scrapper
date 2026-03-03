#!/bin/bash
# Execute SQL import using psql

DATABASE_URL="postgresql://postgres.qaocxxcpjabmlabufjyh:KolboAdmin2026Secure@aws-0-us-west-2.pooler.supabase.com:5432/postgres?pgbouncer=true"

echo "🎬 Executing Toveedo Video Import..."
echo "This will import 481 videos into the database"
echo ""

# Split the SQL file into batches of 50 videos each
# and execute them one by one

cd /home/gir/Desktop/programming/kolbo-monorepo/tovedo

# Use psql to execute the SQL
# First, test connection
echo "Testing database connection..."
psql "$DATABASE_URL" -c "SELECT COUNT(*) FROM videos;" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "❌ Failed to connect to database"
    exit 1
fi

echo "✅ Database connection successful"
echo ""

# Execute the SQL file
echo "Executing import_videos_full.sql..."
psql "$DATABASE_URL" -f import_videos_full.sql

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Import completed successfully!"
    echo "Checking final count..."
    psql "$DATABASE_URL" -c "SELECT COUNT(*) as total_videos FROM videos WHERE \"subsiteId\" = '300fccf5-1c86-41e8-a756-dd64fc2d06ab';"
else
    echo ""
    echo "❌ Import failed. Check the error messages above."
    exit 1
fi
