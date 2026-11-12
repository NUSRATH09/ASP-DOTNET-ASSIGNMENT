-- Step 1: Get all tweets, newest first
SELECT *
FROM tweets
ORDER BY created_at DESC;


-- Step 2: Get the most recent 5 tweets
SELECT *
FROM tweets
ORDER BY created_at DESC
LIMIT 5;


-- Step 3: Find tweets containing dotnet (case-insensitive)
SELECT *
FROM tweets
WHERE content ILIKE '%dotnet%';


--Step 4: Update one tweet's like_count to 42
UPDATE tweets
SET like_count = 42
WHERE id = 1;


-- Verify the update
SELECT *
FROM tweets
WHERE id = 2;

-- Step 3: Find tweets containing dotnet (case-insensitive)
SELECT *
FROM tweets
WHERE content ILIKE '%dotnet%';

-- Step 4: Update one tweet's like_count to 42
UPDATE tweets
SET like_count = 42
WHERE id = 1;

-- Verify the updated tweet
SELECT *
FROM tweets
WHERE id = 1;