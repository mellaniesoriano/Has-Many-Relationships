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
ON posts.users_id = users.id WHERE users.first_name = 'Norene'
AND users.last_name = 'Schmitt';

-- Create a query to get usernames from the users table where the user has created a post after January 1, 2015
SELECT username FROM users LEFT JOIN posts
ON posts.users_id = users.id WHERE posts.created_at > '2015-01-01';

-- Create a query to get the post title, post content, and user's username where the user who created the post joined before January 1, 2015
SELECT posts.title, posts.content, users.username
FROM users LEFT JOIN posts
ON users.id = posts.users_id
WHERE users.created_at > '2015-01-01';

-- Create a query to get the all rows in the comments table, showing post title (aliased as 'Post Title'), and the all the comment's fields
SELECT comments.*, posts.title AS PostTitle
FROM posts LEFT JOIN comments
ON posts.id = comments.posts_id;

-- Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created before January 1, 2015
SELECT posts.title AS PostTitle, posts.url AS post_url, comments.body AS comment_body
FROM posts INNER JOIN comments
ON posts.id = comments.posts_id
WHERE posts.created_at < '2015-01-01';

-- Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created after January 1, 2015\
SELECT posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
FROM posts INNER JOIN comments
ON posts.id = comments.posts_id
WHERE posts.created_at > '2015-01-01';

-- Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the comment body contains the word 'USB'
SELECT posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
FROM posts INNER JOIN comments
ON posts.id = comments.posts_id
WHERE comments.body LIKE '%USB%';