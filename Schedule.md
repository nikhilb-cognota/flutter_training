# Session 1 [14/10/2022]
1. HTTP methods POST, GET 
    - How to set request parameters for POST apis 
    - How to set query parameters for GET apis 
    - Difference between POST and GET 
2. Dart functions 
    - Structure of dart functions 
    - Types of function parameters: Positional parameters, and Optional parameters 
    - Use of ‘required’ keyword for Optional parameters 
3. API calling in flutter 
    - Passing parameters to API 
    - Parsing JSON response for List, Single Object and Boolean values 
4. Stateful and Stateless widgets 
    - Lifecycle of Stateful widget 
    - Use of initState(), build(), and setState() methods


# Session 2 [17/10/2022]
1. State management 
    - What is State management 
    - Importance of State management 
    - Different approaches used in Flutter: GetX, Stacked, BLoC 
2. Use of GetX for state management 
    - Reactive programming and use of Rx objects and Obx widget 
    - How to write GetxControllers for functions, APIs, and data binding 
    - Injection of GetxController in memory through Get.put() and Get.find() 
    - Difference of Get.put() and Get.find() 
    - Lifecycle of GetxController with respect to Flutter Widget tree

## Task : 

Implement login using Raphacure login API and GetxController 
- Create login page with mobile and OTP fields (Use default testing OTP) 
- Use the /api/User/AuthenticateOTP  login API 
- Navigate to the next page and show User details on Successful login 


# Session 3 [18/10/2022]
1. Doubts clearing
    - API call using http package
    - http post() and get() methods
    - building model class
2. Creating custom widgets in Flutter
    - Creating stateless widgets
    - Pass widget parameters though class constructor
    - Writing custom UI in build() method
    - Using the custom widget in a ListView
3. Using a common App Theme
    - Use of static class to hold Theme data
    - Using the Theme class in MaterialApp widget
    - Different options available to customize
    - Change Appbar and Card theme thoughout app


# Session 4 [20/10/2022]
Dart programming
    - Data types and collection types
    - variable initializers and modifiers
    - Data stuctures
    - Async programming using async/await
    - Async programming using Future/Completer

## Task
Create two pages:
1. List of posts (First page)
Fetch list of posts from API provided below, and display as a list on screen.
Show a button in appbar to navigate to seconf page.

2. Add new post (Second page)
Show a form for user to create new post.
Use two text fields to enter post title and body.
New created post should show on first page.

Notes:
use http package for API calls.
use get package for state management.
create custom widgets to show Post data in list
test the APIs in postman

APIs:
1. Get all Posts
GET = https://jsonplaceholder.typicode.com/posts

1. Get one Post
GET = https://jsonplaceholder.typicode.com/posts/{post_id}

2. Create Post
POST = https://jsonplaceholder.typicode.com/posts
payload = {
  id: 101,
  title: 'foo',
  body: 'bar',
  userId: 1
}

# Session 5
1. Debugging
    - Exception handling
    - Debugging with breakpoints
    - Debugging UI using Dart DevTools
