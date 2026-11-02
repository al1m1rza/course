WITH raw_hosts AS (
    SELECT
    *
    FROM
        {{ source('airbnb', 'hosts') }}
)
SELECT 
    id AS host_id,
    name AS host_name,
    is_superhost,
    CREATED_AT,
    UPDATED_AT,
FROM
    raw_hosts
    