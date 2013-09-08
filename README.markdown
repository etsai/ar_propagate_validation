### MVP that validates Events

1. Prevent Events from being saved when:
  a. The events date is empty, in the past, or is not valid.
  b. The events title is already taken or empty.
  c. The event organizers name is empty.
  d. The event organizers email address is invalid.



### Stretch OPTIONAL
#### Stretch is not completed.
An even better practice is to guide the users input to follow the format your
program expects and/or make your program more flexible regarding the data it
accepts from the user.

Computers should serve people. Not the other way around.

#### Objectives

1. Modify the UI so a user is coerced into entering a valid date. Hint: Consider
   using a Datepicker.
2. Modify the controller or model to be more flexible with the format of dates it
   accepts while still saving reasonable dates to the database. Hint: look into
   the rubygem Chronic.
