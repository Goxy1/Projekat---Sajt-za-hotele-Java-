<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/2/2023
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FAQ</title>
    <link href="../css/FAQ.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/Userheader.jsp"/>

<div class="container">
    <h1>FAQ</h1>

    <div class="faq-item">
        <div class="question">How do I make a hotel reservation?</div>
        <div class="answer">To make a hotel reservation, simply go to our website and choose one of the destination that we offer, check-in and check-out dates.You can also click the "Search" button, and you will be presented with a list of available hotels. Select your preferred hotel and follow the booking instructions to complete your reservation.</div>
    </div>

    <div class="faq-item">
        <div class="question">Can I cancel my reservation?</div>
        <div class="answer">Yes, you can cancel your reservation, depending on the hotel's cancellation policy. Please refer to the specific hotel's terms and conditions for details. Some hotels may charge a cancellation fee, especially if it is close to your check-in date. You can manage your reservations by logging into your account or contacting our customer support team.</div>
    </div>

    <div class="faq-item">
        <div class="question">What payment methods are accepted?</div>
        <div class="answer">We accept various payment methods, including major credit cards, debit cards, and online payment platforms. During the reservation process, you will be prompted to enter your payment details securely. Rest assured that your information will be encrypted and protected.</div>
    </div>

    <div class="faq-item">
        <div class="question">Are the prices shown per person or per room?</div>
        <div class="answer">The prices displayed on our website are usually per room, unless otherwise specified. However, some hotels may offer rates based on double occupancy or include additional charges for extra guests. Make sure to review the hotel's pricing details before making a reservation.</div>
    </div>

    <div class="faq-item">
        <div class="question">How do I use points?</div>
        <div class="answer">Once you get reservation on one of our hotels,your account will get 10points.Once you get a specific number of points you can get reservation at lower price.</div>
    </div>
</div>
<jsp:include page="../HeaderAndFooter/Footer.jsp"/>
</body>
</html>
