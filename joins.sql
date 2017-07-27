-- Create a query to get all fields from the users table
SELECT * FROM users;

-- Create a query to get all fields from the posts table where the user_id is 100
SELECT * FROM posts WHERE users_id = 100;

-- Create a query to get all posts fields, the user's first name, and the user's last name, from the posts table where the user's id is 200
SELECT users.first_name, users.last_name, posts.*
FROM posts INNER JOIN users
ON posts.users_id = users.id WHERE users_id = 200;

-- Create a query to get all posts fields, and the user's username, from the posts table where the user's first name is 'Norene' and the user's last_name is 'Schmitt'
SELECT users.first_name, users.last_name, posts.*
FROM posts INNER JOIN users
ON posts.users_id = user.id WHERE users.first_name = 'Norene'
AND users.last_name = 'Schmitt';