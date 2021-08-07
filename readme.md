spring.jpa.hibernate.ddl-auto=update
Here, spring.jpa.hibernate.ddl-auto can be none, update, create, or create-drop. See the Hibernate documentation for details.

none: The default for MySQL. No change is made to the database structure.

update: Hibernate changes the database according to the given entity structures.

create: Creates the database every time but does not drop it on close.

create-drop: Creates the database and drops it when SessionFactory closes.
You must begin with either create or update, because you do not yet have the database structure.
After the first run, you can switch it to update or none, according to program requirements.
Use update when you want to make some change to the database structure.

The default for H2 and other embedded databases is create-drop. For other databases, such as MySQL, the default is none.

It is a good security practice to, after your database is in a production state, set this to none, revoke all privileges
from the MySQL user connected to the Spring application, and give the MySQL user only SELECT, UPDATE, INSERT, and DELETE.
You can read more about this at the end of this guide.

