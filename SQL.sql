-- Step 1: Get alphabetically ordered list of names with profession initials
SELECT
  Name || '(' || SUBSTR(Occupation, 1, 1) || ')'
FROM
  OCCUPATIONS
ORDER BY
  Name;

-- Step 2: Count the occurrences of each occupation and order them
SELECT
  'There are a total of ' || COUNT(Occupation) || ' ' || LOWER(Occupation) || 's.'
FROM
  OCCUPATIONS
GROUP BY
  Occupation
ORDER BY
  COUNT(Occupation),
  LOWER(Occupation);