# Rails Code Challenge - Late Show

For this assessment, you'll be working with Late Night TV show domain.

In this repo, there is a Rails application with some features built out. Your job is to extend this code to add the functionality described in the deliverables below.

## Topics

- MVC
- REST
- Request-Response Cycle
- Forms and Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin coding your solution, clone this repo and then `cd` into it. Then run `bundle install`, `rails db:migrate`, and `rails db:seed` to install dependencies and set up the database, and run `rails s` to start the server.

## The Domain

The application keeps track of the guests that have appeared on the show.

There are three models in the domain: Guest, Episode, and Appearance.

Guests and Episodes have a many to many relationship through Appearances. A single Appearance belongs to one Guest and one Episode.

## What You Already Have

The starter code includes migrations, models, and seed data for Guests and Episodes. There are also routes, controller actions, and views to support listing the guests and episodes.

After running the setup instructions above, visiting `'/guests'` will display all of the guests, and visiting `'/episodes'` will display all of the episodes.

***Schema***

Episodes

| Column | Type |
| ------------- | ------------- |
| date  | Date  |
| number  | Integer  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

Guests

| Column | Type |
| ------------- | ------------- |
| name  | String  |
| occupation  | String  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

### Model Methods and Validations

- None

### Routes, Controllers and Views

- Episodes index
- Guests index

## Instructions

Update the code of the application to meet the following deliverables. Follow RESTful naming conventions and the MVC pattern to divide responsibility.

***Read through these deliverables carefully to understand the requirements for this code challenge. Tackle them one by one, as they build on each other sequentially.***



### 1. Appearance Model

<!-- To log that a specific Guest appeared on a certain Episode, we need to create the Appearance model. **Make the necessary updates to the schema and models** so that:

- Guest can appear on many episodes
- Episode can have multiple guests
- Appearance stores a numeric rating -->

<!-- ### 2. New Appearance Form

A user can fill out a form to create a new Appearance. They can:

- Choose an existing guest from a select dropdown
- Choose an existing episode from a select dropdown
- Enter a numeric rating
- Submit the form

After submitting the form, the user should be redirected to the selected episode's show page. -->

<!-- ### 3. Episode Show Page

On the episode show page, a user should see:

- Episode date
- A list of the guests who were on that episode
- Each guest's name should link to the Guest Show page -->

<!-- ### 4. Guest Show Page Episode links

On the Guest show page, add a list of the Episodes the Guest has appeared on.

For each Episode, show the:

- date of the Episode
- rating for the Appearance

Each Episode date should link to the show page for that Episode. -->

<!-- ### 5. Appearance Rating Validation

The rating on an Appearance should be between 1 and 5 (inclusive - `1` and `5` are okay).

- Add a validation to ensure that the rating is between 1 and 5.
- Add handling for this error to the Appearance create action.
- The validation error should be shown on the Appearance creation form when a user attempts to save an appearance with an invalid rating. -->

<!-- ### 6. Advanced: Additional Appearance Validation

A Guest should only appear on a given Episode once.

- Add a validation to Appearance to ensure that each Guest can only appear once on the same Episode.
- Update the error handling on the Appearance creation form to show this validation error. -->
<!-- 
### 7. Advanced: Episode Average Rating

On the Episode show page, show the average rating of the Appearances for the episode. -->

### 8. Advanced: Guest Show Page Appearance Ordering

On the Guest show page, order the Episodes by the Appearance rating so that the highest rated shows first in the list.

### Feature Demo

![screen capture of feature demo](late-show-features-demo.gif)

## Rubric

### Models, Associations, and Validations

1. Models, associations, and validation not started or have errors that prevent the application from running. Missing validations, or validation syntax is incorrect. May have introduced models outside the specified domain.
2. Models, associations, and validations attempted but incomplete or have errors. Associations may construct the wrong relationships. Validations may be missing or applied to the wrong models. Advanced query methods incomplete or have errors.
3. Models, associations, and validations mostly complete and correct per the deliverables. Advanced validations and methods may be incomplete. May have unused or unnecessary code, possibly including duplication. May have written validations instead of using appropriate built-in validations. May implement advanced query methods with iterators instead of using built-in methods.
4. All models, associations, and validations are complete and correct, save minor mistakes in advanced deliverables. Advanced validations are complete and add informative error messages.
5. All specified models, associations, and validations are complete and correct. Built-in validations are used when appropriate. Variable and method names are intention-revealing. Models have appropriate logic extracted from controllers and views. Advanced query methods use appropriate built-in methods.

### Routes, Controllers, and REST

1. Routes missing, naming does not follow REST, controller actions incomplete or with errors.
2. Some routing and controller logic implemented, but incompletely or incorrectly. May have routes or controller actions not included in the deliverables. May include routes that have no corresponding controller action or vice versa. Controller methods might do work beyond their responsibility in MVC.
3. Most routing and controller logic working as specified. Some advanced deliverables may be incomplete. Routing follows REST convention. Routing table might include some unused routes, or routes and actions that were not specified in the deliverables. Logic may be duplicated between methods.
4. Nearly all routing and controller deliverables completed, possibly with minor errors in advanced deliverables. Routing follows REST conventions. Some logic may be duplicated between controller actions, or not respect MVC separation of concerns. Attempts to use filters and private helper methods to reduce duplication, but some duplication may remain.
5. All routes and controllers deliverables work as described in the instructions. Routing follows REST naming conventions. Controller actions respect MVC separation of concerns, and don't have logic that belongs in the model or the view. ActionController filters and private helper methods are used appropriately to reduce duplication in controller actions.

### Views and Forms

1. Missing or unattempted views and forms, or erb syntax errors in views and forms. Forms created in the wrong views, do not accept the correct input, or do not submit to the correct location. Data not displayed correctly.
2. Views display some data correctly. Forms attempted, but with some errors that prevent submitting data correctly. May not have attempted or may have significant errors in advanced deliverables.
3. Uses view to show data as specified. At least one working form that submits data to the correct location. May not have attempted some advanced view features. May have included views not specified by the deliverables. May include model or controller logic in the view. Forms may accept invalid input (for example, out of range numbers). May not display validation errors correctly. May not use view helper methods to reduce duplication.
4. Nearly all view and form deliverables are complete and correct. May have minor logic errors in advanced deliverables. Mostly does not include controller or model logic in the views. Mostly uses helpers to reduce duplication.
5. All view and form deliverables are complete and correct, including advanced form components. No views not specified by the instructions. No model or controller logic present in the views. Appropriate use of helpers and built-ins to reduce duplication. Validation errors displayed correctly on form.
