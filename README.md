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


## March 6 Homework

 - Make the following URL work: [http://localhost:3000/my_timeline](http://localhost:3000/my_timeline)
  - It should show the photos that my leaders own.
  - Use whatever techniques make the most sense, but a hint: it is possible to make it work using only the long-shortcut for assocation methods.
 - Make the "Follow this person" links on the users#show pages work.
  - If I already follow the user, I should see an "Unfollow this person" link instead.
