<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>User Portal</title>  
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">  
    
    


    <style>
       body {
        background: linear-gradient(to right, #a1c4fd, #c2e9fb); /* Body gradient */
        color: #333;
        font-family: Arial, sans-serif;
    }
    .navbar {
        background: linear-gradient(to right, #00b09b, #96c93d) !important; /* Navbar gradient */
    }
        .nav-link.active {
            font-weight: bold !important; /* Make active link bold */

        }
        .container {
            margin-top: 20px;
        }
        .card {
            margin-bottom: 20px;
            background: rgba(255, 255, 255, 0.9); /* semi-transparent white */
            color: #333;
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .nav-link {
            position: relative;
            color: #fff;
        }
        .nav-link::after {
            content: '';
            display: block;
            width: 0;
            height: 2px;
            background: white;
            transition: width .3s;
            position: absolute;
            bottom: -3px; /* Adjust this value to control the vertical space */
            left: 50%;
            transform: translateX(-50%);
        }
        .nav-link:hover::after {
            width: 50%; /* Adjust this value to control the width of the line */
        }
        .tab-content h2 {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }
        .card-title {
            font-size: 20px;
            font-weight: bold;
            color: #333;
            margin-bottom: 15px;
        }
        .table {
            margin-bottom: 0;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
        .table th {
            background-color: #f7f7f7;
            color: #333;
            font-weight: bold;
        }
        .table-bordered th, .table-bordered td {
            border: 1px solid #ddd;
        }
        .table-bordered tbody tr:nth-of-type(odd) {
            background-color: #f9f9f9;
        }
        .nav-link {
    margin: 0 5px; /* Space between links */
}
.nav-link:active {
        font-weight: bold; /* Make active link bold */
  
    }

    .popup {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1000;
}

.popup-content {
    background-color: white;
    padding: 20px;
    border-radius: 5px;
    text-align: center;
}

.close-btn {
    cursor: pointer;
    float: right;
    font-size: 20px;
}

    </style>
    

   


</head>  
<body>  

    


    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Train Ticket System</a>
        <div class="collapse navbar-collapse d-flex justify-content-between">
            <div class="mx-auto"> <!-- Centering the links -->
                <ul class="navbar-nav" id="navl">
                    <li class="nav-item">
                        <a id="home-nav" class="nav-link " href="">Home</a>
                    </li>
                    <li class="nav-item">
                        <a id="bookticket-nav" class="nav-link" href="">Book Ticket</a>
                    </li>
                    <li class="nav-item">
                        <a id="viewticket-nav" class="nav-link" href="">View Tickets</a>
                    </li>
                    <li class="nav-item">
                        <a id="updatedetails-nav" class="nav-link" href="">Update Details</a>
                    </li>
                </ul>
            </div>
            <div>
                <a id="logout" class="btn btn-outline-light" href="login.html">Logout</a>
            </div>
        </div>
    </nav>
     










    <div class="container">  
        <div id="home" class="tab-content">  
            <!-- <h2>Home</h2>   -->
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
        </div>  
        <div id="bookticket-section" class="tab-content" style="display:none;">  
            <h2>Book Your Ticket:</h2>  
            <form id="trainForm" action="/submission.html" class="needs-validation" novalidate>  
                <div class="form-group">  
                    <label for="trainName">ID:</label>  
                    <input type="text"  readonly class="form-control" id="trainName" name="trainName" required>  
                    <div class="invalid-feedback">Please enter a train name.</div>  
                </div>  
                <div class="form-group">  
                    <label for="numberOfSeats">Name:</label>  
                    <input type="text" class="form-control" id="numberOfSeats" name="numberOfSeats" required>  
                    <div class="invalid-feedback">Please enter the number of seats.</div>  
                </div>  
                <div class="form-group">  
                    <label for="destinationTo">Mobile:</label>  
                    <input type="text" class="form-control" id="destinationTo" name="destinationTo" required>  
                    <div class="invalid-feedback">Please enter the destination.</div>  
                </div>  
                <div class="form-group">  
                    <label for="destinationFrom">Age:</label>  
                    <input type="number" class="form-control" id="destinationFrom" name="destinationFrom" required>  
                    <div class="invalid-feedback">Please enter the origin.</div>  
                </div>  
                <div class="form-group">  
                    <label for="ownership">Date:</label>  
                    <input type="date" class="form-control" id="ownership" name="ownership" required>  
                    <div class="invalid-feedback">Please enter the ownership details.</div>  
                </div>  
                <div class="form-group">  
                    <label for="ownership">Boarding Station:</label>  
                    <input type="text" class="form-control" id="ownership" name="ownership" required>  
                    <div class="invalid-feedback">Please enter the ownership details.</div>  
                </div>  
                <div class="form-group">  
                    <label for="ownership">Ticket Category:</label>  
                    <select name="ticketcategory"  class="form-control" id="ticketcategory"> 
                        <option value="firstclass">First Class</option> 
                        <option value="actier1">A.C Tier 1</option> 
                        <option value="actier2">A.C Tier 2</option> 
                        <option value="tatkal">Tatkal</option> 
                    </select> 
                    <!-- <input type="text" class="form-control" id="ownership" name="ownership" required>  --> 
                    <div class="invalid-feedback">Please enter the ownership details.</div>  
                </div>  
                <div class="form-group">  
                    <label for="trainsavailable">Trains Available:</label>  
                    <select name="trainsavailable" class="form-control" id="trainsavailable"> 
                        <option value="firstclass">First Class</option> 
                        <option value="actier1">A.C Tier 1</option> 
                        <option value="actier2">A.C Tier 2</option> 
                        <option value="tatkal">Tatkal</option> 
                    </select> 
                    <!-- <input type="text" class="form-control" id="ownership" name="ownership" required>  --> 
                    <div class="invalid-feedback">Please enter the ownership details.</div>  
                </div>  
                <div class="form-group">  
                    <label for="ownership">Number of Tickets:</label>  
                    <input type="number" class="form-control" id="ownership" name="ownership" required>  
                    <div class="invalid-feedback">Please enter the ownership details.</div>  
                </div>  
                <button type="submit" onclick="submitpop()" class="btn btn-primary">Submit</button>  
            </form>  
        </div>  
        <div id="updatedetails-section" class="tab-content" style="display:none;">  
            <h2>Update Profile:</h2>  
            <form id="trainForm" class="needs-validation" novalidate>  
                <div class="form-group">  
                    <label for="mail">Email:</label>  
                    <input type="email"  class="form-control" id="trainName" name="trainName" required>  
                    <div class="invalid-feedback">Please enter a train name.</div>  
                </div>  
                <div class="form-group">  
                    <label for="destinationTo">Mobile:</label>  
                    <input type="text" class="form-control" id="destinationTo" name="destinationTo" required>  
                    <div class="invalid-feedback">Please enter the destination.</div>  
                </div>  
                <div class="form-group">  
                    <label for="destinationFrom">Address:</label>  
                    <input type="text" class="form-control" id="destinationFrom" name="destinationFrom" required>  
                    <div class="invalid-feedback">Please enter the origin.</div>  
                </div>  
                <div id="passcheck" class="form-group">  
                    <label for="destinationFrom">Change Password:</label>  
                    <input type="checkbox" onclick="checkpass()" name="changepass" id="changepass">  
                    <div class="invalid-feedback">Please enter the origin.</div>  
                </div>  
                <div id="password-div" style="display: none;"> 
                    <div class="form-group">  
                        <label for="ownership">Current Password:</label>  
                        <input type="password" class="form-control" id="ownership" name="ownership" required>  
                        <div class="invalid-feedback">Please enter the ownership details.</div>  
                    </div>  
                    <div class="form-group">  
                        <label for="ownership">New Password:</label>  
                        <input type="password" class="form-control" id="ownership" name="ownership" required>  
                        <div class="invalid-feedback">Please enter the ownership details.</div>  
                    </div>  
                    <div class="form-group">  
                        <label for="ownership">Confirm Password:</label>  
                        <input type="password" class="form-control" id="ownership" name="ownership" required>  
                        <div class="invalid-feedback">Please enter the ownership details.</div>  
                    </div>  
                </div> 
                <button type="submit" onclick="submitpop()" class="btn btn-primary">Submit</button>  
            </form>  
        </div> 
        <div id="viewticket-section" class="tab-content" style="display:none;">  
            <div class="card">  
                <div class="card-body">  
                    <h5 class="card-title">Client Information</h5>  
                    <table class="table table-bordered">  
                        <thead>  
                            <tr>  
                                <th>Ticket ID</th>  
                                <th>Train ID</th>  
                                <th>User ID</th>  
                                <th>User Name</th>  
				                <th>Boarding Station</th>  
                                <th>Destination Station</th>  
                                <th>Boarding Date and Time</th> 
                                <th>Arrival Date and Time</th>  
                                <th>Number of Tickets</th>  
                                <th>Cancel Ticket</th> 
                            </tr>  
                        </thead>  
                        <tbody>  
                            <tr>  
                                <td>1234</td> 
                                <td>1234</td> 
                                <td>1234</td> 
                                <td>Sampath</td> 
                                <td>Mumbai</td> 
                                <td>Pune</td> 
                                <td>12-07-2024 10:30 AM</td> 
                                <td>12-07-2024 1:30 PM</td> 
                                <td>2</td> 
                                <td><button class="btn btn-danger" onclick="popup()">Cancel</button></td>  
                            </tr>  
                            <tr>  
                                <td>4567</td> 
                                <td>4567</td> 
                                <td>4567</td> 
                                <td>Vatsavaya</td> 
                                <td>Mumbai</td> 
                                <td>Pune</td> 
                                <td>12-07-2024 10:30 AM</td> 
                                <td>12-07-2024 1:30 PM</td> 
                                <td>3</td> 
                                <td><button class="btn btn-danger" onclick="popup()">Cancel</button></td>  
                            </tr>  
                        </tbody>  
                    </table>  
                </div>  
            </div>  
            <!-- Modal for Cancel Confirmation -->
           <!-- Popup for Cancel Confirmation -->
<div id="cancelPopup" class="popup" style="display: none;">
    <div class="popup-content">
        <span class="close-btn" onclick="closePopup()">&times;</span>
        <h5>Confirm Cancellation</h5>
        <p>Are you sure you want to cancel this ticket?</p>
        <button onclick="confirmCancellation()" class="btn btn-danger">Cancel Ticket</button>
        <button onclick="closePopup()" class="btn btn-secondary">Close</button>
    </div>
</div>


        </div>  
        <!-- <div id="logout" class="tab-content" style="display:none;">  
            <h2>Logout</h2>  
            <p>You have been logged out. <a href="login.html">Click here</a> to log in again.</p>  
        </div>   -->
    </div>  
    <script src="user.js"></script>  
</body>  
</html> 
