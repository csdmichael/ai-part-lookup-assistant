-- Forward-only migration 0002: reference data so a new environment is not empty.
-- Re-runnable: each row is inserted only when its title is absent.
INSERT INTO assistant (title, reference, status, priority)
SELECT 'Sample Assistant 1', 'A-0001', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM assistant WHERE title = 'Sample Assistant 1');
INSERT INTO assistant (title, reference, status, priority)
SELECT 'Sample Assistant 2', 'A-0002', 'in-progress', 'normal'
WHERE NOT EXISTS (SELECT 1 FROM assistant WHERE title = 'Sample Assistant 2');
INSERT INTO assistant (title, reference, status, priority)
SELECT 'Sample Assistant 3', 'A-0003', 'complete', 'high'
WHERE NOT EXISTS (SELECT 1 FROM assistant WHERE title = 'Sample Assistant 3');
INSERT INTO assistant (title, reference, status, priority)
SELECT 'Sample Assistant 4', 'A-0004', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM assistant WHERE title = 'Sample Assistant 4');
