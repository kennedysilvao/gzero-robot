*Settings*
Documentation       Base Test

Library         RequestsLibrary
Library         factories/Users.py

Resource        Helpers.robot
Resource        routes/GeeksRoute.robot
Resource        routes/SessionsRoute.robot
Resource        routes/UsersRoute.robot

*Variables*
${API_USERS}        https://getgeeks-users-kennedy.herokuapp.com
${API_GEEKS}        https://getgeeks-geeks-kennedy.herokuapp.com
