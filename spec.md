# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) -- Airplane has_many Squawks, Pilot has_many Flights
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) -- A Flight belongs_to a Pilot
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) -- A Pilot has_many Airplanes thru Flights.  An Airplane has_many Pilots thru Flights.
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) -- A Pilot has_many Airplanes thru Flights.  An Airplane has_many Pilots thru Flights.
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) -- Flights have a scheduled Date which is submitted by the user.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) -- Pilot, Flight and Airplane models include validations
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) -- Two scoped methods are provide by Flight and are employed in the user (Pilot) home page.
- [x] Include signup (how e.g. Devise) -- Developed custom solution for signup w/ bcrypt
- [x] Include login (how e.g. Devise) -- Developed custom solution for login w/ bcrypt
- [x] Include logout (how e.g. Devise) -- Developed custom solution for logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) -- Facebook login via OmniAuth
- [x] Include nested resource show or index (URL e.g. users/2/recipes) -- /airplanes/1/squawks
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) -- /airplanes/3/squawks/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new) -- /login & /pilots/new

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
