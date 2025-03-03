<html>
<head>
<title>Navbar </title>
<meta name="layout" content="main"/>
</head>
 <style>
        .navbar {
            background-color: #333;
            overflow: hidden;
            padding: 10px 20px;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 10px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="${createLink(uri: '/')}">Home</a>
        <a href="${createLink(controller: 'about')}">About</a>
        <a href="${createLink(controller: 'contact')}">Contact</a>
        <a href="${createLink(controller: 'user', action: 'profile')}">Profile</a>
    </div>

    <h1>Welcome to My App</h1>
</body>
</html>