<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | Shyama Traders</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e8eb 100%);
            color: #333;
            line-height: 1.6;
            min-height: 100vh;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 5%;
            background: rgba(255, 255, 255, 0.95);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        nav h2 {
            color: #2c3e50;
            font-size: 28px;
            font-weight: 700;
            letter-spacing: 1px;
        }

        nav h2 span {
            color: #3498db;
        }

        .nav-links {
            display: flex;
            gap: 30px;
        }

        nav a {
            text-decoration: none;
            color: #2c3e50;
            font-weight: 500;
            font-size: 16px;
            position: relative;
            padding: 5px 0;
            transition: all 0.3s ease;
        }

        nav a:hover {
            color: #3498db;
        }

        nav a::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: #3498db;
            transition: width 0.3s ease;
        }

        nav a:hover::after {
            width: 100%;
        }

        .contact-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 0 5%;
        }

        .contact-header {
            text-align: center;
            margin-bottom: 50px;
        }

        h1 {
            font-size: 48px;
            font-weight: 700;
            margin-bottom: 20px;
            color: #2c3e50;
            line-height: 1.2;
        }

        h1 span {
            color: #3498db;
        }

        .section-title {
            font-size: 32px;
            color: #2c3e50;
            margin-bottom: 30px;
            position: relative;
            padding-bottom: 10px;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 80px;
            height: 3px;
            background: #3498db;
        }

        .contact-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            margin-bottom: 60px;
        }

        .contact-form {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #2c3e50;
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.2);
        }

        textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }

        .contact-info {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
        }

        .info-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 30px;
        }

        .info-icon {
            width: 50px;
            height: 50px;
            background: #f0f7fd;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 20px;
            color: #3498db;
            font-size: 20px;
            flex-shrink: 0;
        }

        .info-text h3 {
            color: #2c3e50;
            margin-bottom: 5px;
            font-size: 18px;
        }

        .info-text p {
            color: #7f8c8d;
            line-height: 1.5;
        }

        .info-text a {
            color: #3498db;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .info-text a:hover {
            color: #2980b9;
            text-decoration: underline;
        }

        .map-container {
            height: 400px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            margin-bottom: 60px;
        }

        .map-container iframe {
            width: 100%;
            height: 100%;
            border: none;
        }

        .business-hours {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            margin-bottom: 60px;
        }

        .hours-table {
            width: 100%;
            border-collapse: collapse;
        }

        .hours-table tr:nth-child(even) {
            background: #f9f9f9;
        }

        .hours-table th,
        .hours-table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        .hours-table th {
            color: #2c3e50;
            font-weight: 500;
        }

        .hours-table td {
            color: #7f8c8d;
        }

        .hours-table .highlight {
            color: #3498db;
            font-weight: 500;
        }

        .btn {
            display: inline-block;
            background: #3498db;
            color: white;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background: #2980b9;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(52, 152, 219, 0.4);
        }

        .btn-block {
            display: block;
            width: 100%;
        }

        @media (max-width: 768px) {
            nav {
                flex-direction: column;
                padding: 15px;
            }

            .nav-links {
                margin-top: 15px;
                gap: 15px;
            }

            h1 {
                font-size: 36px;
            }

            .contact-content {
                grid-template-columns: 1fr;
            }

            .section-title {
                font-size: 28px;
            }

        }
    </style>
</head>

<body>
<nav>
    <h2>Shyama <span>Traders</span></h2>
    <div class="nav-links">
        <a href="/">Home</a>
        <a href="/about">About</a>
        <a href="/contact">Contact us?</a>
    </div>
</nav>

<div class="contact-container">
    <div class="contact-header">
        <h1>Contact <span>Shyama Traders</span></h1>
        <p>We'd love to hear from you! Reach out for inquiries, support, or just to say hello.</p>
    </div>

    <div class="contact-content">
        <div class="contact-form">
            <h2 class="section-title">Send Us a Message</h2>
            <form action="#" method="POST">
                <div class="form-group">
                    <label for="name">Your Name</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" class="form-control">
                </div>
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <input type="text" id="subject" name="subject" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" class="form-control" required></textarea>
                </div>
                <button type="submit" class="btn btn-block">Send Message</button>
            </form>
        </div>

        <div class="contact-info">
            <h2 class="section-title">Contact Information</h2>
            <div class="info-item">
                <div class="info-icon">
                    <i class="fas fa-map-marker-alt"></i>
                </div>
                <div class="info-text">
                    <h3>Our Location</h3>
                    <p>123 Business Avenue<br>Mumbai, Maharashtra 400001<br>India</p>
                </div>
            </div>
            <div class="info-item">
                <div class="info-icon">
                    <i class="fas fa-phone-alt"></i>
                </div>
                <div class="info-text">
                    <h3>Phone Numbers</h3>
                    <p>Main: <a href="tel:+912212345678">+91 22 1234 5678</a><br>
                        Mobile: <a href="tel:+919876543210">+91 98765 43210</a></p>
                </div>
            </div>
            <div class="info-item">
                <div class="info-icon">
                    <i class="fas fa-envelope"></i>
                </div>
                <div class="info-text">
                    <h3>Email Addresses</h3>
                    <p>General: <a href="mailto:info@shyamatraders.com">info@shyamatraders.com</a><br>
                        Support: <a href="mailto:support@shyamatraders.com">support@shyamatraders.com</a></p>
                </div>
            </div>
            <div class="info-item">
                <div class="info-icon">
                    <i class="fas fa-clock"></i>
                </div>
                <div class="info-text">
                    <h3>Business Hours</h3>
                    <p>Monday - Friday: 9:00 AM - 6:00 PM<br>
                        Saturday: 10:00 AM - 4:00 PM<br>
                        Sunday: Closed</p>
                </div>
            </div>
        </div>
    </div>

    <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.7154273062916!2d72.8245093149006!3d19.04398868710748!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c96a34dc4401%3A0x3ffc07e83942b13f!2s123%20Business%20Ave%2C%20Mumbai%2C%20Maharashtra%20400001!5e0!3m2!1sen!2sin!4v1620000000000!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
    </div>

    <div class="business-hours">
        <h2 class="section-title">Business Hours</h2>
        <table class="hours-table">
            <tr>
                <th>Day</th>
                <th>Opening Hours</th>
            </tr>
            <tr>
                <td>Monday</td>
                <td>9:00 AM - 6:00 PM</td>
            </tr>
            <tr>
                <td>Tuesday</td>
                <td>9:00 AM - 6:00 PM</td>
            </tr>
            <tr>
                <td>Wednesday</td>
                <td>9:00 AM - 6:00 PM</td>
            </tr>
            <tr>
                <td>Thursday</td>
                <td>9:00 AM - 6:00 PM</td>
            </tr>
            <tr>
                <td>Friday</td>
                <td>9:00 AM - 6:00 PM</td>
            </tr>
            <tr>
                <td class="highlight">Saturday</td>
                <td class="highlight">10:00 AM - 4:00 PM</td>
            </tr>
            <tr>
                <td>Sunday</td>
                <td>Closed</td>
            </tr>
        </table>
    </div>
</div>

<!-- Font Awesome for icons (you can also host this locally) -->
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>