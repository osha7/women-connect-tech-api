Women Connect In Tech

Installation
The Rails API back end repository can be found here: https://github.com/osha7/women-connect-tech-frontend

Fork and clone both repositories before attempting to launch the application.

----- BACKEND API -----
Starting up Rails Server:

First run bundle install to install all the necessary gems. Then run rails db:migrate and rails db:seed to build and initialize the PostgresSQL database.

After the DB has been initialized and seeded run rails s to start the server.

Starting up React/Redux application:

Make sure you have started the rails server by following the steps above.

----- FRONTEND -----
Run npm install to install all necessary dependencies. 
Other dependencies needed:  

Run 'npm start -p 3002' to start the application. The application MUST be started in browser at http://localhost:30002.  This is due to CORS dependencies in the backend

Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/osha7/women-connect-tech-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

--------Project Trello / Youtube / Medium Blog / Diagrams.net-------------------------------

program initial diagram:
https://app.diagrams.net/#G1DE65bWCNTn7qYGnEdA4PAABHwh4d-Qx9

Trello:
https://trello.com/b/YnMUK99T/proj-5-react-redux

Youtube:
https://www.youtube.com/watch?v=z4KV9bb7zLI

Blog (Cloudinary Image Upload w/React & Rails):
https://medium.com/@ogroetz/react-js-uploading-images-using-cloudinary-33b992cc21e4

-------- License -------
This project is available as open source under the terms of the MIT License.

Code of Conduct
Everyone interacting in the women-connect-tech project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.

This project was bootstrapped with Create React App.

Thank you!