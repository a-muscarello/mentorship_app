# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
Mentorship App
Created using Ruby 2..5.1

Designing a mentorship matching app, that would allow mentors to provide their services to mentees for free.  At this time, this mentorship app will provide mentorship for technology areas such as Python, React, Node JS etc.  We foresee an expansion to other fields in the future.

MVP
Both mentors and mentees sign up for an account.
A mentor can find a mentee/s and vice versa.
A list of suitable mentors will be populated on the profile page based on the request selection at signup. 
Once matched, either party can request to connect.
If connection is accepted, a private chat room is created.
The chat history will show in both their profile pages.
Mentees have ability to like a mentor. 

Pivot feature:
Users will have the ability to rank mentors.


Post MVP
More profile details and images/avatar.
Geolocation for ease of in-person meet.
Add more mentorship fields.
Be able to provide reviews for good/exceptional mentors. 


Utilizes:
Action Cable
AJAX
jQuery
Bootstrap
SCSS
Photoshop


Stats are hidden by default: default hidden (pix)

Stats are shown when user hovers over image: shown on hover (pix)


Collaboration
Collectively:
Discussed the project scope and drew up a checklist with tasks to be completed, assigning same tasks and drew up datelines.
Created a user flow of how the app will work. 

Incorporated and made adjustments to spotlight code to work with existing elements
Used Flexbox within Flexbox to correctly align elements to work across a variety of viewport widths

Ambika:
Created a Github repository for the project, added collaborators and merging pull requests.
Created a profile interest database.
Added page views for user and profile interest.
Compiled the README.
Danielle:
Drew out a framework for the database Entity Relationship Diagram (ERD) with the various relationships in place.
Added Devise for authentication.
Integrated Action Cable into the project, in essence creating and adding the entire chat functionality to the app.
Created ability to pull suggestions by interests.
Francis:
Transferred the wireframe to Photoshop and created mock-ups.
Created the design for the entire app.
Created the landing page with the call-to-action blurb.
Integrated the routes for the app.


Features:

Users have the ability to login into their profile page. New users signup for an account to gain access to services.
Users have the ability to select interest topics as well as option of being a 'mentor' or/and 'mentee'.
Message board appears on profile page.
Users are able to edit their profiles, see a list of mentors/mentees populated according to their earlier selection, view mentor/mentees respective profiles, request a private chat.
Clicking on a mentor profile generates a modal with profile displayed.
Once request has been made, user waits for the other party to accept/decline the request. 
When request is accepted, both users move into a private chat room.
Chat conversation will be shown in their profile pages.
Mentees have ability to like a mentor. The button for this will only appear after a chat session.


Main login / signup page

Navigational arrow buttons
Materialize Preloader shows when AJAX calls are being made

Acknowledgements:
Photoshop
Bootstrap
Action Cable
