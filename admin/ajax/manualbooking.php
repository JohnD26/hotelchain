<?php

/*
require('../inc/db_config.php');
require('../inc/essentials.php');

session_start();

header('Content-Type: application/json');



if(isset($_POST['submit_booking'])) {
    // Fixed user_id for manual bookings
    $CUST_ID = 5;
    $ORDER_ID = 'ORD_' . random_int(11111,9999999);
    $TXN_AMOUNT = $_POST['txn_amount']; // Assuming this comes from the form

    // Filter and sanitize form data
    // You might need to adjust these based on your actual form fields
    $customer_name = filter_input(INPUT_POST, 'customer_name', FILTER_SANITIZE_STRING);
    $phone_number = filter_input(INPUT_POST, 'phone_number', FILTER_SANITIZE_STRING);
    $address = filter_input(INPUT_POST, 'address', FILTER_SANITIZE_STRING);
    $room_id = filter_input(INPUT_POST, 'room_id', FILTER_SANITIZE_NUMBER_INT);
    $check_in = filter_input(INPUT_POST, 'check_in', FILTER_SANITIZE_STRING);
    $check_out = filter_input(INPUT_POST, 'check_out', FILTER_SANITIZE_STRING);

    // Insert booking order into database
    $query1 = "INSERT INTO `booking_order`(`user_id`, `room_id`, `check_in`, `check_out`, `order_id`, `trans_amt`) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $con->prepare($query1);
    $stmt->bind_param('iisssd', $CUST_ID, $room_id, $check_in, $check_out, $ORDER_ID, $TXN_AMOUNT);
    $bookingOrderSuccess = $stmt->execute();

    $booking_id = $stmt->insert_id;

    // Insert booking details into database
    $query2 = "INSERT INTO `booking_details`(`booking_id`, `room_name`, `price`, `total_pay`, `user_name`, `phonenum`, `address`) VALUES (?, ?, ?, ?, ?, ?, ?)";
    // You need to fetch or calculate room_name and price. For demonstration, let's assume they are passed via POST.
    $room_name = $_POST['room_name']; // This should ideally come from your rooms database based on room_id
    $price = $_POST['price']; // This should ideally be calculated or retrieved from your database
    $stmt = $con->prepare($query2);
    $stmt->bind_param('ississs', $booking_id, $room_name, $price, $TXN_AMOUNT, $customer_name, $phone_number, $address);
    $bookingDetailsSuccess = $stmt->execute();

    if ($bookingOrderSuccess && $bookingDetailsSuccess) {
        echo json_encode(['success' => true, 'message' => 'Booking successfully created']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to create booking']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'No data submitted']);
}
*/


require('../inc/db_config.php');
require('../inc/essentials.php');

session_start();

header('Content-Type: application/json');

if (isset($_POST['submit_booking'])) {
    $CUST_ID = 5;
    $ORDER_ID = 'ORD_' . random_int(11111, 9999999);

    // Filter and sanitize form data
    $customer_name = filter_input(INPUT_POST, 'customer_name', FILTER_SANITIZE_STRING);
    $phone_number = filter_input(INPUT_POST, 'phone_number', FILTER_SANITIZE_STRING);
    $address = filter_input(INPUT_POST, 'address', FILTER_SANITIZE_STRING);
    $room_id = filter_input(INPUT_POST, 'room_id', FILTER_SANITIZE_NUMBER_INT);
    $check_in = filter_input(INPUT_POST, 'check_in', FILTER_SANITIZE_STRING);
    $check_out = filter_input(INPUT_POST, 'check_out', FILTER_SANITIZE_STRING);

    // Calculate the length of stay in days
    $date1 = new DateTime($check_in);
    $date2 = new DateTime($check_out);
    $interval = $date1->diff($date2);
    $length_of_stay = $interval->days;

    // Fetch the room price
    $priceQuery = "SELECT `price`, `name` FROM `rooms` WHERE `id` = ?";
    $stmt = $con->prepare($priceQuery);
    if (!$stmt) {
        echo json_encode(['success' => false, 'message' => 'Failed to prepare room price query']);
        exit;
    }
    $stmt->bind_param('i', $room_id);
    $stmt->execute();
    $stmt->bind_result($room_price, $room_name);
    $stmt->fetch();
    $stmt->close();

    if (!$room_price) {
        echo json_encode(['success' => false, 'message' => 'Room not found']);
        exit;
    }

    // Calculate the total transaction amount
    $TXN_AMOUNT = $room_price * $length_of_stay;

    // Proceed with booking order and details insertion as before
    $query1 = "INSERT INTO `booking_order`(`user_id`, `room_id`, `check_in`, `check_out`, `order_id`, `trans_amt`) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $con->prepare($query1);
    $stmt->bind_param('iisssd', $CUST_ID, $room_id, $check_in, $check_out, $ORDER_ID, $TXN_AMOUNT);
    $bookingOrderSuccess = $stmt->execute();

    $booking_id = $stmt->insert_id;

    $query2 = "INSERT INTO `booking_details`(`booking_id`, `room_name`, `price`, `total_pay`, `user_name`, `phonenum`, `address`) VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $con->prepare($query2);
    $stmt->bind_param('ississs', $booking_id, $room_name, $room_price, $TXN_AMOUNT, $customer_name, $phone_number, $address);
    $bookingDetailsSuccess = $stmt->execute();

    if ($bookingOrderSuccess && $bookingDetailsSuccess) {
        echo json_encode(['success' => true, 'message' => 'Booking successfully created']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to create booking']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'No data submitted']);
}


?>
