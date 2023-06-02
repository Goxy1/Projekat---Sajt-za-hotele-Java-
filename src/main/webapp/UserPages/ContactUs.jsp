<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 5/30/2023
  Time: 8:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact us</title>
    <link href="../css/ContactUsPage.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
</head>
<body>
<jsp:include page="../HeaderAndFooter/Userheader.jsp"/>

  <div class="background">
      <div class="container">
          <div class="screen">
              <div class="screen-header">
                  <div class="screen-header-left">
                      <div class="screen-header-button close"></div>
                      <div class="screen-header-button maximize"></div>
                      <div class="screen-header-button minimize"></div>
                  </div>
                  <div class="screen-header-right">
                      <div class="screen-header-ellipsis"></div>
                      <div class="screen-header-ellipsis"></div>
                      <div class="screen-header-ellipsis"></div>
                  </div>
              </div>
              <div class="screen-body">
                  <div class="screen-body-item left">
                      <div class="app-title">
                          <span>CONTACT</span>
                          <span>US</span>
                      </div>
                      <div class="app-contact">CONTACT INFO : +381 123 456 789</div>
                  </div>
                  <div class="screen-body-item">
                      <div class="app-form">
                          <div class="app-form-group">
                              <input class="app-form-control" placeholder="NAME" value="ONLINE RESERVATIONS">
                          </div>
                          <div class="app-form-group">
                              <input class="app-form-control" placeholder="EMAIL" required>
                          </div>
                          <div class="app-form-group">
                              <input class="app-form-control" placeholder="SUBJECT" required>
                          </div>
                          <div class="app-form-group message">
                              <input class="app-form-control" placeholder="MESSAGE" required>
                          </div>
                          <div class="app-form-group buttons">
                              <button class="app-form-button" onclick="refreshPage()">SEND</button>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>

</body>
</html>

<script>
    function refreshPage(){
        location.reload();
    }
</script>