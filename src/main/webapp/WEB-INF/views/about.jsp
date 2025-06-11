<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Shyama Traders</title>
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

        .about-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 0 5%;
        }

        .about-header {
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

        .about-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            margin-bottom: 60px;
            align-items: center;
        }

        .about-text p {
            margin-bottom: 20px;
            color: #555;
            font-size: 16px;
        }

        .about-image {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .about-image img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.5s ease;
        }

        .about-image:hover img {
            transform: scale(1.03);
        }

        .values-section {
            background: white;
            padding: 60px 5%;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            margin-bottom: 60px;
        }

        .values-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .value-card {
            background: #f8f9fa;
            padding: 30px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .value-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }

        .value-card h3 {
            color: #3498db;
            margin-bottom: 15px;
            font-size: 22px;
        }

        .value-card p {
            color: #666;
        }

        .team-section {
            margin-bottom: 60px;
        }

        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .team-member {
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .team-member:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }

        .member-image {
            height: 250px;
            overflow: hidden;
        }

        .member-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .team-member:hover .member-image img {
            transform: scale(1.1);
        }

        .member-info {
            padding: 20px;
            text-align: center;
        }

        .member-info h3 {
            color: #2c3e50;
            margin-bottom: 5px;
        }

        .member-info p {
            color: #3498db;
            font-weight: 500;
            margin-bottom: 15px;
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

        .cta-section {
            text-align: center;
            padding: 60px 5%;
            background: linear-gradient(135deg, #3498db 0%, #2c3e50 100%);
            color: white;
            border-radius: 10px;
        }

        .cta-section h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .cta-section p {
            max-width: 700px;
            margin: 0 auto 30px;
            font-size: 18px;
            opacity: 0.9;
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

            .about-content {
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
        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/about">About</a>
        <a href="${pageContext.request.contextPath}/contact">Contact us</a>
    </div>
</nav>

<div class="about-container">
    <div class="about-header">
        <h1>About <span>Shyama Traders</span></h1>
        <p>Discover our story, values, and the team behind our success</p>
    </div>

    <div class="about-content">
        <div class="about-text">
            <h2 class="section-title">Our Story</h2>
            <p>Founded in 2010, Shyama Traders began as a small family business with a vision to provide quality products at affordable prices. What started as a modest venture has now grown into a trusted name in the industry, serving thousands of satisfied customers nationwide.</p>
            <p>Our journey has been marked by consistent growth, innovation, and an unwavering commitment to customer satisfaction. We've expanded our product range and services while maintaining the personal touch that set us apart from the beginning.</p>
            <p>Today, we stand as a testament to what can be achieved through hard work, integrity, and a customer-first approach.</p>
        </div>
        <div class="about-image">
            <img src="${pageContext.request.contextPath}/resources/images/office.jpg" alt="Our office">
        </div>
    </div>

    <div class="values-section">
        <h2 class="section-title">Our Core Values</h2>
        <div class="values-grid">
            <div class="value-card">
                <h3>Integrity</h3>
                <p>We conduct our business with honesty and transparency, building trust with every interaction.</p>
            </div>
            <div class="value-card">
                <h3>Quality</h3>
                <p>We source and deliver only the finest products, ensuring excellence in every transaction.</p>
            </div>
            <div class="value-card">
                <h3>Innovation</h3>
                <p>We continuously evolve to meet changing market demands and customer expectations.</p>
            </div>
            <div class="value-card">
                <h3>Community</h3>
                <p>We believe in giving back and fostering positive relationships within our community.</p>
            </div>
        </div>
    </div>

    <div class="team-section">
        <h2 class="section-title">Meet Our Team</h2>
        <div class="team-grid">
            <div class="team-member">
                <div class="member-image">
                    <img src="${pageContext.request.contextPath}/resources/images/team1.jpg" alt="Rahul Sharma">
                </div>
                <div class="member-info">
                    <h3>Rahul Sharma</h3>
                    <p>Founder & CEO</p>
                    <p>With over 20 years of industry experience, Rahul leads our company with vision and passion.</p>
                </div>
            </div>
            <div class="team-member">
                <div class="member-image">
                    <img src="${pageContext.request.contextPath}/resources/images/team2.jpg" alt="Priya Patel">
                </div>
                <div class="member-info">
                    <h3>Priya Patel</h3>
                    <p>Operations Manager</p>
                    <p>Priya ensures our operations run smoothly and efficiently every day.</p>
                </div>
            </div>
            <div class="team-member">
                <div class="member-image">
                    <img src="${pageContext.request.contextPath}/resources/images/team3.jpg" alt="Amit Singh">
                </div>
                <div class="member-info">
                    <h3>Amit Singh</h3>
                    <p>Sales Director</p>
                    <p>Amit leads our sales team with expertise and dedication to customer satisfaction.</p>
                </div>
            </div>
            <div class="team-member">
                <div class="member-image">
                    <img src="${pageContext.request.contextPath}/resources/images/team4.jpg" alt="Neha Gupta">
                </div>
                <div class="member-info">
                    <h3>Neha Gupta</h3>
                    <p>Customer Relations</p>
                    <p>Neha ensures every customer receives exceptional service and support.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="cta-section">
        <h2>Ready to experience the Shyama Traders difference?</h2>
        <p>Join thousands of satisfied customers who trust us for quality products and exceptional service.</p>
        <a href="${pageContext.request.contextPath}/contact" class="btn">Contact Us Today</a>
    </div>
</div>
</body>
</html>