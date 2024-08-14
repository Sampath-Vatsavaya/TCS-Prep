<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Portal</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .nav-link.active {
            font-weight: bold;
        }
        .container {
            margin-top: 20px;
        }
        .card {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Admin Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="#home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#registerTrain">Register a Train</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#profile">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div id="home" class="tab-content">
            <h2>Home</h2>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Aggregate Table Section</h5>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Class</th>
                                <th>Number of Tickets Booked</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>First Class</td>
                                <td>20</td>
                            </tr>
                            <tr>
                                <td>A.C Tier 1</td>
                                <td>15</td>
                            </tr>
                            <tr>
                                <td>A.C Tier 2</td>
                                <td>30</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Sales Done Per Quarter</h5>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Quarter</th>
                                <th>Sales</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Q1</td>
                                <td>$5000</td>
                            </tr>
                            <tr>
                                <td>Q2</td>
                                <td>$7000</td>
                            </tr>
                            <tr>
                                <td>Q3</td>
                                <td>$8000</td>
                            </tr>
                            <tr>
                                <td>Q4</td>
                                <td>$9000</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Client Information</h5>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Mobile</th>
                                <th>Number of Tickets Booked</th>
                                <th>Delete Customer</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>1234567890</td>
                                <td>5</td>
                                <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>0987654321</td>
                                <td>3</td>
                                <td><button class="btn btn-danger">Delete</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div id="registerTrain" class="tab-content" style="display:none;">
            <h2>Register a Train</h2>
            <form id="trainForm" class="needs-validation" novalidate>
                <div class="form-group">
                    <label for="trainName">Name of Train</label>
                    <input type="text" class="form-control" id="trainName" name="trainName" required>
                    <div class="invalid-feedback">Please enter a train name.</div>
                </div>
                <div class="form-group">
                    <label for="numberOfSeats">Number of Seats</label>
                    <input type="number" class="form-control" id="numberOfSeats" name="numberOfSeats" required>
                    <div class="invalid-feedback">Please enter the number of seats.</div>
                </div>
                <div class="form-group">
                    <label for="destinationTo">To</label>
                    <input type="text" class="form-control" id="destinationTo" name="destinationTo" required>
                    <div class="invalid-feedback">Please enter the destination.</div>
                </div>
                <div class="form-group">
                    <label for="destinationFrom">From</label>
                    <input type="text" class="form-control" id="destinationFrom" name="destinationFrom" required>
                    <div class="invalid-feedback">Please enter the origin.</div>
                </div>
                <div class="form-group">
                    <label for="ownership">Ownership</label>
                    <input type="text" class="form-control" id="ownership" name="ownership" required>
                    <div class="invalid-feedback">Please enter the ownership details.</div>
                </div>
                <button type="submit" class="btn btn-primary">Register Train</button>
            </form>
        </div>

        <div id="profile" class="tab-content" style="display:none;">
            <h2>Profile</h2>
            <form id="profileForm" class="needs-validation" novalidate>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                    <div class="invalid-feedback">Please enter a username.</div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword">
                    <div class="invalid-feedback">Passwords do not match.</div>
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile Number</label>
                    <input type="text" class="form-control" id="mobile" name="mobile" required pattern="\d{10}">
                    <div class="invalid-feedback">Please enter a valid 10-digit mobile number.</div>
                </div>
                <div class="form-group">
                    <label for="email">Email ID</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                    <div class="invalid-feedback">Please enter a valid email address.</div>
                </div>
                <button type="submit" class="btn btn-success">Update Profile</button>
                <button type="button" id="deleteProfile" class="btn btn-danger">Delete Profile</button>
            </form>
        </div>

        <div id="logout" class="tab-content" style="display:none;">
            <h2>Logout</h2>
            <p>You have been logged out. <a href="login.html">Click here</a> to log in again.</p>
        </div>
    </div>
    <script src="scripts.js"></script>
</body>
</html>