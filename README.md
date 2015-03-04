# Photogram

In this project, we'll practice advanced associations -- ones where the association helper method names don't match with the other table names, and ones that are self-referential.

In the end, we'll have a functional Instagram clone.

## Domain Model

To begin with, these are the tables that we'll need:

    Photo:

     - caption:text
     - owner_id:integer (foreign key for User)

    Comment:

     - content:text
     - photo_id:integer
     - commenter_id:integer (foreign key for User)

    Favoriting:

     - photo_id:integer
     - favorited_by_id:integer (foreign key for User)


