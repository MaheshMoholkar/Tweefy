<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String flag; int price;%>


<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Tweefy | Home</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link
      href="assets/vendor/glightbox/css/glightbox.min.css"
      rel="stylesheet"
    />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />

  </head>

  <body>
  			<%
    			  if(session.getAttribute("sign")!=null){
    				  flag = (String)session.getAttribute("sign");
    			  } else {
    				  flag = "Sign In";
    			  }
			%>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center">
      <div class="container d-flex align-items-center justify-content-between">
        <div class="logo">
          <h1><a href="index.html">Tweefy</a></h1>
          <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
        </div>

        <nav id="navbar" class="navbar">
          <ul>
            <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
            <li><a class="nav-link scrollto" href="#about">About</a></li>
            <li><a class="nav-link scrollto" href="#services">Services</a></li>
            <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
            <li>
              <a class="getstarted scrollto" href="login.jsp"><%=flag%></a>
            </li>
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">
      <div class="container">
        <div class="row">
          <div
            class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center"
          >
            <h1 data-aos="fade-up">Your Ultimate Twitter Automation Bot</h1>
            <h2 data-aos="fade-up" data-aos-delay="400">
              Tweefy is a powerful Twitter automation bot that provides a wide
              range of services to help you grow your Twitter presence. With
              Tweefy, you can schedule your tweets, schedule Twitter Spaces,
              generate polls, auto-like replies, and even retweet the
              most liked reply to a tweet. Our user-friendly interface makes it
              easy for you to manage all your Twitter accounts in one place,
              saving you time and effort.
            </h2>
            <div data-aos="fade-up" data-aos-delay="800">
              <a href="#about" class="btn-get-started scrollto">Get Started</a>
            </div>
          </div>
          <div
            class="col-lg-6 order-1 order-lg-2 hero-img"
            data-aos="fade-left"
            data-aos-delay="200"
          >
            <img
              src="assets/img/hero-img.png"
              class="img-fluid animated"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>
    <!-- End Hero -->

    <main id="main">
      <!-- ======= Clients Section ======= -->
      <section id="clients" class="clients clients">
        <div class="container">
          <div class="row">
            <div class="col-lg-2 col-md-4 col-6">
              <img
                src="assets/img/clients/client-1.png"
                class="img-fluid"
                alt=""
                data-aos="zoom-in"
              />
            </div>

            <div class="col-lg-2 col-md-4 col-6">
              <img
                src="assets/img/clients/client-2.png"
                class="img-fluid"
                alt=""
                data-aos="zoom-in"
                data-aos-delay="100"
              />
            </div>

            <div class="col-lg-2 col-md-4 col-6">
              <img
                src="assets/img/clients/client-3.png"
                class="img-fluid"
                alt=""
                data-aos="zoom-in"
                data-aos-delay="200"
              />
            </div>

            <div class="col-lg-2 col-md-4 col-6">
              <img
                src="assets/img/clients/client-4.png"
                class="img-fluid"
                alt=""
                data-aos="zoom-in"
                data-aos-delay="300"
              />
            </div>
          </div>
        </div>
      </section>
      <!-- End Clients Section -->

      <!-- ======= About Us Section ======= -->
      <section id="about" class="about">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>About Us</h2>
          </div>

          <div class="row content">
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="150">
              <p>
                We are a team of experienced developers and tech enthusiasts who
                are passionate about building innovative solutions to help
                individuals and businesses grow their social media presence. Our
                focus is on creating user-friendly and reliable tools that
                automate time-consuming tasks, allowing our clients to focus on
                what they do best - creating great content and engaging with
                their audience.
              </p>
            </div>
            <div
              class="col-lg-6 pt-4 pt-lg-0"
              data-aos="fade-up"
              data-aos-delay="300"
            >
              <p>
                We believe in providing high-quality services that are
                affordable and accessible to everyone. Our mission is to empower
                individuals and businesses to achieve their social media goals
                and succeed in the digital world.
              </p>
              <a href="#" class="btn-learn-more">Learn More</a>
            </div>
          </div>
        </div>
      </section>
      <!-- End About Us Section -->

      <!-- ======= Counts Section ======= -->
      <section id="counts" class="counts">
        <div class="container">
          <div class="row">
            <div
              class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-xl-start"
              data-aos="fade-right"
              data-aos-delay="150"
            >
              <img src="assets/img/counts-img.svg" alt="" class="img-fluid" />
            </div>

            <div
              class="col-xl-7 d-flex align-items-stretch pt-4 pt-xl-0"
              data-aos="fade-left"
              data-aos-delay="300"
            >
              <div class="content d-flex flex-column justify-content-center">
                <div class="row">
                  <div class="col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                      <i class="bi bi-emoji-smile"></i>
                      <span
                        data-purecounter-start="0"
                        data-purecounter-end="547"
                        data-purecounter-duration="1"
                        class="purecounter"
                      ></span>
                      <p>
                        <strong>Happy Clients</strong> are using Tweefy to grow
                        their presence on Twitter.
                      </p>
                    </div>
                  </div>

                  <div class="col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                      <i class="bi bi-journal-richtext"></i>
                      <span
                        data-purecounter-start="0"
                        data-purecounter-end="115"
                        data-purecounter-duration="1"
                        class="purecounter"
                      ></span>
                      <p>
                        <strong>More than 100</strong> tweets are being posted
                        per day!
                      </p>
                    </div>
                  </div>

                  <div class="col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                      <i class="bi bi-clock"></i>
                      <span
                        data-purecounter-start="0"
                        data-purecounter-end="24"
                        data-purecounter-duration="1"
                        class="purecounter"
                      ></span>
                      <p>
                        <strong>Works 24 x 7</strong> even if you are offline!
                      </p>
                    </div>
                  </div>

                  <div class="col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                      <i class="bi bi-award"></i>
                      <span
                        data-purecounter-start="0"
                        data-purecounter-end="1"
                        data-purecounter-duration="1"
                        class="purecounter"
                      ></span>
                      <p>
                        <strong>No. 1 choice</strong> for business owner, a
                        social media influencer.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End .content-->
            </div>
          </div>
        </div>
      </section>
      <!-- End Counts Section -->

      <!-- ======= Services Section ======= -->
      <section id="services" class="services">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>Services</h2>
            <p>Tweefy provides these facinating services.</p>
          </div>

          <div class="row">
            <div
              class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0"
            >
              <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                <div class="icon"><i class="bx bxl-dribbble"></i></div>
                <h4 class="title"><a href="">Auto Like</a></h4>
                <p class="description">
                  Auto like to replies from follower to increase engagement.
                </p>
              </div>
            </div>

            <div
              class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0"
            >
              <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                <div class="icon"><i class="bx bx-file"></i></div>
                <h4 class="title"><a href="">Schedule Tweets</a></h4>
                <p class="description">Schedule and Post tweets at anytime.</p>
              </div>
            </div>

            <div
              class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0"
            >
              <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
                <div class="icon"><i class="bx bx-tachometer"></i></div>
                <h4 class="title"><a href="">Schedule Twitter Spaces</a></h4>
                <p class="description">
                  Auto schedule Twitter Spaces with one click.
                </p>
              </div>
            </div>

            <div
              class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0"
            >
              <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
                <div class="icon"><i class="bx bx-world"></i></div>
                <h4 class="title"><a href="">Auto Retweet</a></h4>
                <p class="description">
                  Auto Retweet most liked reply to your tweet.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- End Services Section -->

      <!-- ======= Features Section ======= -->
      <section id="features" class="features">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>Features</h2>
            <p>Tweefy comes with lot of amazing features.</p>
          </div>

          <div class="row" data-aos="fade-up" data-aos-delay="300">
            <div class="col-lg-3 col-md-4">
              <div class="icon-box">
                <i class="ri-store-line" style="color: #ffbb2c"></i>
                <h3><a href="">Scheduled tweets</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
              <div class="icon-box">
                <i class="ri-bar-chart-box-line" style="color: #5578ff"></i>
                <h3><a href="">Twitter Space Scheduling</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
              <div class="icon-box">
                <i class="ri-calendar-todo-line" style="color: #e80368"></i>
                <h3><a href="">Poll generation</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4 mt-lg-0">
              <div class="icon-box">
                <i class="ri-paint-brush-line" style="color: #e361ff"></i>
                <h3><a href="">Auto-follow</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-database-2-line" style="color: #47aeff"></i>
                <h3><a href="">Auto-unfollow</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-gradienter-line" style="color: #ffa76e"></i>
                <h3><a href="">Auto-Retweet</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-file-list-3-line" style="color: #11dbcf"></i>
                <h3><a href="">Auto-reply</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-price-tag-2-line" style="color: #4233ff"></i>
                <h3><a href="">Auto-like</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-anchor-line" style="color: #b2904f"></i>
                <h3><a href="">Follower analysis</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-disc-line" style="color: #b20969"></i>
                <h3><a href="">Analytics and reporting</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-base-station-line" style="color: #ff5828"></i>
                <h3><a href="">Offline access</a></h3>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 mt-4">
              <div class="icon-box">
                <i class="ri-fingerprint-line" style="color: #29cc61"></i>
                <h3><a href="">OAuth 2.0</a></h3>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- End Features Section -->

      <!-- ======= Pricing Section ======= -->
      <section id="pricing" class="pricing">
        <div class="container">
          <div class="section-title">
            <h2>Pricing</h2>
            <p>Buy subscription to unlock various features.</p>
          </div>

          <div class="row">
            <div class="col-lg-4 col-md-6">
              <div class="box" data-aos="zoom-in-right" data-aos-delay="200">
                <h3>Free</h3>
                <h4><sup>$</sup>0<span> / month</span></h4>
                <ul>
                  <li>Scheduled tweets</li>
                  <li>Poll generation</li>
                  <li>Twitter Space Scheduling</li>
                  <li>OAuth 2.0</li>
                </ul>
                <div class="btn-wrap">
                  <a 
                  <% if(session.getAttribute("userid")!=null)
                  	{ 
                  %> 
                  		href="buy?price=0"
                  <%
                  	}
                 	else {
                  %>
                 		href="login.jsp"
                  <%
                 		}
                  %>
                  class="btn-buy">Buy Now</a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
              <div
                class="box recommended"
                data-aos="zoom-in"
                data-aos-delay="100"
              >
                <h3>Basic</h3>
                <h4><sup>$</sup>9<span> / month</span></h4>
                <ul>
                  <li>Free Included</li>
                  <li>Auto Like</li>
                  <li>Auto Retweet</li>
                  <li>Auto Reply</li>
                  
                </ul>
                 <div class="btn-wrap">
                  <a 
                  <% if(session.getAttribute("userid")!=null)
                  	{ 
                  %> 
                  		href="buy?price=9"
                  <%
                  	}
                 	else {
                  %>
                 		href="login.jsp"
                  <%
                 		}
                  %>
                  class="btn-buy">Buy Now</a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
              <div class="box" data-aos="zoom-in-left" data-aos-delay="200">
                <h3>Premium</h3>
                <h4><sup>$</sup>19<span> / month</span></h4>
                <ul>
                  <li>Basic Included</li>
                  <li>Auto Follow</li>
                  <li>Auto Unfollow</li>
                  <li>Follower Analysis</li>
                  <li>Analytics and Reporting</li>
                </ul>
                <div class="btn-wrap">
                  <a 
                  <% if(session.getAttribute("userid")!=null)
                  	{ 
                  %> 
                  		href="buy?price=19"
                  <%
                  	}
                 	else {
                  %>
                 		href="login.jsp"
                  <%
                 		}
                  %>
                  class="btn-buy">Buy Now</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- End Pricing Section -->

      <!-- ======= F.A.Q Section ======= -->
      <section id="faq" class="faq">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>Frequently Asked Questions</h2>
          </div>

          <div
            class="row faq-item d-flex align-items-stretch"
            data-aos="fade-up"
            data-aos-delay="100"
          >
            <div class="col-lg-5">
              <i class="ri-question-line"></i>
              <h4>Can I cancel my Tweefy subscription at any time?</h4>
            </div>
            <div class="col-lg-7">
              <p>
                Yes, you can cancel your Tweefy subscription at any time. We
                do not require any long-term commitments, and you can cancel or
                modify your subscription at any time without any penalties or
                fees.
              </p>
            </div>
          </div>
          <!-- End F.A.Q Item-->

          <div
            class="row faq-item d-flex align-items-stretch"
            data-aos="fade-up"
            data-aos-delay="200"
          >
            <div class="col-lg-5">
              <i class="ri-question-line"></i>
              <h4>
                What kind of analytics and reporting does Tweefy provide?
              </h4>
            </div>
            <div class="col-lg-7">
              <p>
                Tweefy provides detailed analytics and reports on your
                Twitter activity, including follower growth, engagement, and
                post performance. These insights can help you optimize your
                social media strategy and improve your overall presence on
                Twitter.
              </p>
            </div>
          </div>
          <!-- End F.A.Q Item-->

          <div
            class="row faq-item d-flex align-items-stretch"
            data-aos="fade-up"
            data-aos-delay="300"
          >
            <div class="col-lg-5">
              <i class="ri-question-line"></i>
              <h4>Is there a free trial available for Tweefy?</h4>
            </div>
            <div class="col-lg-7">
              <p>
                Yes, we offer a free trial for new users to test out our
                services and see if they meet their needs. Simply sign up for an
                account and start using our services for free for a limited
                time.
              </p>
            </div>
          </div>
          <!-- End F.A.Q Item-->

          <div
            class="row faq-item d-flex align-items-stretch"
            data-aos="fade-up"
            data-aos-delay="400"
          >
            <div class="col-lg-5">
              <i class="ri-question-line"></i>
              <h4>Can I generate polls with Tweefy?</h4>
            </div>
            <div class="col-lg-7">
              <p>
                Yes, you can generate polls with Tweefy and post them
                directly to Twitter. Polls are a great way to engage with your
                followers and gather valuable feedback on your content.
              </p>
            </div>
          </div>
          <!-- End F.A.Q Item-->

          <div
            class="row faq-item d-flex align-items-stretch"
            data-aos="fade-up"
            data-aos-delay="500"
          >
            <div class="col-lg-5">
              <i class="ri-question-line"></i>
              <h4>Is Tweefy safe to use on my Twitter account?</h4>
            </div>
            <div class="col-lg-7">
              <p>
                Yes, Tweefy is safe to use on your Twitter account. We use
                the Twitter API to access your account, and we do not store any
                sensitive information such as your password. We also adhere to
                Twitter's terms of service and guidelines to ensure that our
                services are in compliance.
              </p>
            </div>
          </div>
          <!-- End F.A.Q Item-->
        </div>
      </section>
      <!-- End F.A.Q Section -->

      <!-- ======= Contact Section ======= -->
      <section id="contact" class="contact">
        <div class="container">
          <div class="section-title" data-aos="fade-up">
            <h2>Contact Us</h2>
          </div>

          <div class="row">
            <div
              class="col-lg-4 col-md-6"
              data-aos="fade-up"
              data-aos-delay="100"
            >
              <div class="contact-about">
                <h3>Tweefy</h3>
                <p>
                  "Tweefy is an all-in-one Twitter automation bot that helps
                  you schedule tweets, schedule Twitter Spaces, generate polls,
                  auto-like replies, and engage with your audience on Twitter.
                  Our user-friendly interface and powerful features make it easy
                  to manage all your Twitter accounts in one place and grow your
                  social media presence."
                </p>
                <div class="social-links">
                  <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                  <a href="#" class="facebook"
                    ><i class="bi bi-facebook"></i
                  ></a>
                  <a href="#" class="instagram"
                    ><i class="bi bi-instagram"></i
                  ></a>
                  <a href="#" class="linkedin"
                    ><i class="bi bi-linkedin"></i
                  ></a>
                </div>
              </div>
            </div>

            <div
              class="col-lg-3 col-md-6 mt-4 mt-md-0"
              data-aos="fade-up"
              data-aos-delay="200"
            >
              <div class="info">
                <div>
                  <i class="ri-map-pin-line"></i>
                  <p>Pimpri Chinchwad<br />Pune, 411001</p>
                </div>

                <div>
                  <i class="ri-mail-send-line"></i>
                  <p>tweefy@gmail.com</p>
                </div>

                <div>
                  <i class="ri-phone-line"></i>
                  <p>+917517069209</p>
                </div>
              </div>
            </div>

            <div
              class="col-lg-5 col-md-12"
              data-aos="fade-up"
              data-aos-delay="300"
            >
              <form action="mail" method="post">
                <div class="form-group">
                  <input style="margin-bottom: 20px"
                    type="text"
                    name="nm"
                    class="form-control"
                    id="name"
                    <% 
                    	if(session.getAttribute("userid")!=null)
                    		{
                    %>
                    		value=<%=session.getAttribute("name")%>
                    <%
                    		} else {
                    %>
                    		placeholder="Your Name"
                    <%
                    		}
                    %>
                    required
                  />
                </div>
                <div class="form-group">
                  <input style="margin-bottom: 20px"
                    type="email"
                    class="form-control"
                    name="em"
                    id="email"
                     <% 
                    	if(session.getAttribute("userid")!=null)
                    		{
                    	
                    %>
                    		value=<%=session.getAttribute("email")%>
                    <%
                    		} else {
                    %>
                    		placeholder="Your Email"
                    <%
                    		}
                    %>
                    required
                  />
                </div>
                <div class="form-group">
                  <input style="margin-bottom: 20px"
                    type="text"
                    class="form-control"
                    name="sub"
                    id="subject"
                    placeholder="Subject"
                  />
                </div>
                <div class="form-group">
                  <textarea style="margin-bottom: 20px"
                    class="form-control"
                    name="message"
                    rows="5"
                    placeholder="Message"
                  ></textarea>
                </div>
                  <button style="color: #fff;border-color: transparent;background: #3498db;padding: 8px 25px;border-radius: 50px;" type="submit">Send Message</button>
              </form>
            </div>
          </div>
        </div>
      </section>
      <!-- End Contact Section -->
    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
      <div class="container">
        <div class="row d-flex align-items-center">
          <div class="col-lg-6 text-lg-left text-center"></div>
          <div class="col-lg-6">
            <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
              <a href="#intro" class="scrollto">Home</a>
              <a href="#about" class="scrollto">About</a>
              <a href="#">Privacy Policy</a>
              <a href="#">Terms of Use</a>
            </nav>
          </div>
        </div>
      </div>
    </footer>
    <!-- End Footer -->

    <a
      href="#"
      class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
