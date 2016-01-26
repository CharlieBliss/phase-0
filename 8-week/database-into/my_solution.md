
##What are databases for?
Databases are generally for storing large amounts of data with relational characteristics. Anything that needs to be sorted, organized, and/or referenced quickly and specifically is a good candiate for creating a database.
##What is a one-to-many relationship?
  A one to many relationship is a item that serves as one point of reference to manifold values( or 1 or zero, since "many" simply means "any number of"). An example would be a userID number serving as a point of reference for all of their orders.
##What is a primary key? What is a foreign key? How can you determine which is which?
  A primary key is used to identify a specific instance of a key in a database. Primary keys are always unique and every instance of a relational database has a primary key. A foreign key uses that same Primary key in a different table to connect the two tables together. An example would be a SSN(the primary key) connecting to that same number in a different table(the foreign key) to establish a link between that SSN and the various bank accounts a person has.

##How can you select information out of a SQL database? What are some general guidelines for that?
  Selecting information is typically done with the keywords SELECT FROM. The information you need will define how you say this, so you can say SELECT name, phone_number FROM phonebook. There are many commands that will help you broaden or specify the commands, and those typically follow the table name in the syntac. An example would be SELECT * FROM phonebook WHERE name LIKE (%man%). This is telling the database to retrieve every category from the table as long as the name category of that row has, at some point, the letters "man" in it.There are many commands you can do, but they generally stick to this structure.

