ALTER TABLE animals
ADD COLUMN location VARCHAR(50);


INSERT INTO animals ( name, type, age, location ) VALUES ('Milo', 'dog', 10, 'Utah'), ('Richie', 'parot', 5, 'Idaho'), ('Elo', 'fish', 9, 'Georgia');


ALTER TABLE animals
RENAME COLUMN "type" TO "species";


ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR(50);