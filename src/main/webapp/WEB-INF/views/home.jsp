<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page | Shyama Traders</title>
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

        .hero {
            text-align: center;
            padding: 100px 5% 60px;
            max-width: 1200px;
            margin: 0 auto;
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

        .subtitle {
            font-size: 20px;
            color: #7f8c8d;
            max-width: 700px;
            margin: 0 auto 40px;
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
        }

        .btn:hover {
            background: #2980b9;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(52, 152, 219, 0.4);
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

            .subtitle {
                font-size: 18px;
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

<section class="hero">
    <h1>Welcome to <span>Shyama Traders</span></h1>
    <p class="subtitle">Your trusted partner for quality products and exceptional service. We deliver excellence with every transaction.</p>
    <a href="${pageContext.request.contextPath}/about" class="btn">Learn More</a>
</section>
</body>
</html>