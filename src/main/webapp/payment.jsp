<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%! String flag; double tax; %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Tweefy | Payment</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link rel="stylesheet" href="./assets/css/style_payment.css">
  </head>
  <body>
  			<%
    			
		
			%>
    <div class="container bg-light d-md-flex align-items-center">
      <div class="card box1 shadow-sm p-md-5 p-md-5 p-4">
        <div class="fw-bolder mb-4">
          <span class="fas fa-dollar-sign"></span>
          <span class="ps-1"><%=session.getAttribute("price")%></span>
        </div>
        <div class="d-flex flex-column">
          <div class="d-flex align-items-center justify-content-between text">
            <span class="">Tax charges</span>
            <span class="fas">
              <span class="ps-1"><%=session.getAttribute("tax")%></span>
            </span>
          </div>
          <div
            class="d-flex align-items-center justify-content-between text mb-4"
          >
            <span>Total</span>
            <span class="fas fa-dollar-sign">
              <span class="ps-1"><%=session.getAttribute("total")%></span>
            </span>
          </div>
          <div class="border-bottom mb-4"></div>
          <div class="d-flex flex-column mb-4">
            <span class="far fa-file-alt text">
              <span class="ps-2">Invoice ID:</span>
            </span>
            <span class="ps-3"><%=session.getAttribute("invoice")%></span>
          </div>
          <div class="d-flex flex-column mb-5">
            <span class="far fa-calendar-alt text">
              <span class="ps-2">Next payment:</span>
            </span>
            <span class="ps-3"><%=session.getAttribute("date")%></span>
          </div>
          <div
            class="d-flex align-items-center justify-content-between text mt-5"
          >
            <div class="d-flex flex-column text">
              <span>Customer Support:</span>
              <span>online chat 24/7</span>
            </div>
            <div class="btn btn-primary rounded-circle">
              <span class="fas fa-comment-alt"></span>
            </div>
          </div>
        </div>
      </div>
      <div class="card box2 shadow-sm">
        <div
          class="d-flex align-items-center justify-content-between p-md-5 p-4"
        >
          <span class="h5 fw-bold m-0">Payment methods</span>
          <div class="btn btn-primary bar">
            <span class="fas fa-bars"></span>
          </div>
        </div>
        <ul class="nav nav-tabs mb-3 px-md-4 px-2">
          <li class="nav-item">
            <a class="nav-link px-2 active" aria-current="page" href="#"
              >Credit Card</a
            >
          </li>
          
        </ul>
<br></br>
        <form action="">
          <div class="row">
            <div class="col-12">
              <div class="d-flex flex-column px-md-5 px-4 mb-4">
                <span>Credit Card</span>
                <div class="inputWithIcon">
                  <input class="form-control" type="text" pattern="\d{4}\s?\d{4}\s?\d{4}\s?\d{4}" inputmode="numeric" placeholder="XXXX XXXX XXXX XXXX">
                  <span class="">
                    <img
                      src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-logok-15.png"
                      alt=""
                  /></span>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="d-flex flex-column ps-md-5 px-md-0 px-4 mb-4">
                <span>Expiration<span class="ps-1">Date</span></span>
                <div class="inputWithIcon">
                  <input type="text" class="form-control" placeholder="XX/XX" />
                  <span class="fas fa-calendar-alt"></span>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="d-flex flex-column pe-md-5 px-md-0 px-4 mb-4">
                <span>Code CVV</span>
                <div class="inputWithIcon">
                  <input type="password" class="form-control" placeholder="XXX" />
                  <span class="fas fa-lock"></span>
                </div>
              </div>
            </div>
            <div class="col-12">
              <div class="d-flex flex-column px-md-5 px-4 mb-4">
                <span>Name</span>
                <div class="inputWithIcon">
                  <input
                    class="form-control text-uppercase"
                    type="text"
                  />
                  <span class="far fa-user"></span>
                </div>
              </div>
            </div>
            <div class="col-12 px-md-5 px-4 mt-3">
              <div class="btn btn-primary w-100">
              <a href = "payment" style="text-decoration:none; color:white">
              Pay <%=session.getAttribute("total")%>
              </a>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
