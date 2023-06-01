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
            <h1><a href = "../index.jsp"><img src = "../img/logo.jpg" alt="Logo nase kompanije"></a><small>Online reservation hotels </small></h1>
          </div>
        </header>
      </div>
    </header>
  </div>
  <br>
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

      <a class="navbar-brand" href="../UserPages/HowToBookOnlinePage.jsp">How to use</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="../UserPages/ExploreHotelsUserPage.jsp">Explore hotels</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../UserPages/ContactUs.jsp">Contact us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../UserPages/UserReservations.jsp">My reservations</a>
          </li>
          <li>
            <a class="nav-link" href="LogoutUserServlet">Logout</a>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </nav>
  </div>
</header>
