ALTER TABLE minions_info
ADD CONSTRAINT unique_id_email
UNIQUE (id, email)
,ADD CONSTRAINT if_banana_is_more_0
CHECK (banana > 0);
