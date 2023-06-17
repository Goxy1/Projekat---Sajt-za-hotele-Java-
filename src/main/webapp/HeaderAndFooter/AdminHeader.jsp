<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
</head>
<header>
  <div class="container">
    <header class = "row">
      <div class = "col-md-10">
        <header>
          <div class = "page-header">
            <h1><a href = "../AdminPages/AdminPage.jsp"><img src = "../img/logo.jpg" alt="Logo nase kompanije"></a><small>Admin Hotel Reservation System</small></h1>
          </div>
        </header>
      </div>
    </header>
  </div>
  <br>
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="../AdminPages/AdminPage.jsp">Hotels</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="../AdminPages/DeleteAHotel.jsp">Delete a Hotel</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="../AdminPages/CreateAHotel.jsp">Create a Hotel</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../AdminPages/ShowReservations.jsp">Reservations</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="../AdminPages/ShowUsersPage.jsp">Users</a>
        </li>
        </ul>
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="../LogoutAdminServlet">Logout</a>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</header>