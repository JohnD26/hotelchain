<?php
require('inc/essentials.php');
require('inc/db_config.php');
adminLogin();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Portal - Manual Booking Entry</title>
    <?php require('inc/links.php'); ?>
</head>
<body class="bg-light">

<?php require('inc/header.php'); ?>

<div class="container-fluid" id="main-content">
    <div class="row">
        <div class="col-lg-10 ms-auto p-4 overflow-hidden">
            <h3 class="mb-4">MANUAL BOOKING ENTRY</h3>

            <div class="card border-0 shadow-sm mb-4">
                <div class="card-body">
                    <form id="manualBookingForm">
                        <div class="mb-3">
                            <label for="customer_name" class="form-label">Customer Name</label>
                            <input type="text" class="form-control" id="customer_name" name="customer_name" required>
                        </div>
                        <div class="mb-3">
                            <label for="phone_number" class="form-label">Phone Number</label>
                            <input type="tel" class="form-control" id="phone_number" name="phone_number" required>
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" name="address" required>
                        </div>
                        <div class="mb-3">
                            <label for="room_id" class="form-label">Room ID</label>
                            <input type="number" class="form-control" id="room_id" name="room_id" required>
                        </div>
                        <div class="mb-3">
                            <label for="check_in" class="form-label">Check-In Date</label>
                            <input type="date" class="form-control" id="check_in" name="check_in" required>
                        </div>
                        <div class="mb-3">
                            <label for="check_out" class="form-label">Check-Out Date</label>
                            <input type="date" class="form-control" id="check_out" name="check_out" required>
                        </div>
                        <input type="hidden" name="submit_booking" value="1">
                        <button type="submit" class="btn custom-bg text-white">Submit Booking</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require('inc/scripts.php'); ?>
</body>
</html>


<script>
    document.getElementById('manualBookingForm').addEventListener('submit', function(e) {
        e.preventDefault(); // Prevent the default form submission

        const formData = new FormData(this); // `this` refers to the form
        formData.append('submit_booking', '1'); // Append the submit_booking field

        fetch('ajax/manualbooking.php', {
            method: 'POST',
            body: formData
        })
            .then(response => response.json()) // Assuming the server responds with JSON
            .then(data => {
                if(data.success) {
                    alert('Booking successfully created.');
                    // Optional: Clear the form or redirect
                } else {
                    alert('Failed to create booking: ' + data.message);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('An error occurred. Please try again.');
            });
    });

</script>
