<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login user page</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link href="css/LogInUserPage.css" rel="stylesheet">
    
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="LoginServlet" method="POST">
        <h3>Login as User</h3>

        <label for="username">Username</label>
        <input type="text" placeholder="Enter your username" id="username">

        <label for="password">Password</label>
        <input type="password" placeholder="Enter your password" id="password">

        <button>Log In</button>
    </form>
</body>
</html>
