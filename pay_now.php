<?php
/*
  require('admin/inc/db_config.php');
  require('admin/inc/essentials.php');

  require('inc/paytm/config_paytm.php');
  require('inc/paytm/encdec_paytm.php');

  date_default_timezone_set("America/Toronto");

  session_start();

  if(!(isset($_SESSION['login']) && $_SESSION['login']==true)){
    redirect('index.php');
  }

  if(isset($_POST['pay_now']))
  {
    header("Pragma: no-cache");
    header("Cache-Control: no-cache");
    header("Expires: 0");

    $checkSum = "";

    $ORDER_ID = 'ORD_'.$_SESSION['uId'].random_int(11111,9999999);
    $CUST_ID = $_SESSION['uId'];
    $INDUSTRY_TYPE_ID = INDUSTRY_TYPE_ID;
    $CHANNEL_ID = CHANNEL_ID;
    $TXN_AMOUNT = $_SESSION['room']['payment'];


    // Create an array having all required parameters for creating checksum.

    $paramList = array();
    $paramList["MID"] = PAYTM_MERCHANT_MID;
    $paramList["ORDER_ID"] = $ORDER_ID;
    $paramList["CUST_ID"] = $CUST_ID;
    $paramList["INDUSTRY_TYPE_ID"] = $INDUSTRY_TYPE_ID;
    $paramList["CHANNEL_ID"] = $CHANNEL_ID;
    $paramList["TXN_AMOUNT"] = $TXN_AMOUNT;
    $paramList["WEBSITE"] = PAYTM_MERCHANT_WEBSITE;
    $paramList["CALLBACK_URL"] = CALLBACK_URL;


    //Here checksum string will return by getChecksumFromArray() function.
    $checkSum = getChecksumFromArray($paramList,PAYTM_MERCHANT_KEY);

    // Insert payment data into database

    $frm_data = filteration($_POST);

    $query1 = "INSERT INTO `booking_order`(`user_id`, `room_id`, `check_in`, `check_out`,`order_id`) VALUES (?,?,?,?,?)";

    insert($query1,[$CUST_ID,$_SESSION['room']['id'],$frm_data['checkin'],
      $frm_data['checkout'],$ORDER_ID],'issss');

    $booking_id = mysqli_insert_id($con);

    $query2 = "INSERT INTO `booking_details`(`booking_id`, `room_name`, `price`, `total_pay`,
      `user_name`, `phonenum`, `address`) VALUES (?,?,?,?,?,?,?)";

    insert($query2,[$booking_id,$_SESSION['room']['name'],$_SESSION['room']['price'],
      $TXN_AMOUNT,$frm_data['name'],$frm_data['phonenum'],$frm_data['address']],'issssss');

  }*/

require('admin/inc/db_config.php');
require('admin/inc/essentials.php');

date_default_timezone_set("America/Toronto");

session_start();

if(!(isset($_SESSION['login']) && $_SESSION['login']==true)){
    redirect('index.php');
}

if(isset($_POST['pay_now']))
{
    $ORDER_ID = 'ORD_'.$_SESSION['uId'].random_int(11111,9999999);
    $CUST_ID = $_SESSION['uId'];
    $TXN_AMOUNT = $_SESSION['room']['payment'];

    // Filter and sanitize form data
    $frm_data = filteration($_POST);

    // Insert booking order into database
    // Assuming $TXN_AMOUNT holds the total payment amount
    $query1 = "INSERT INTO `booking_order`(`user_id`, `room_id`, `check_in`, `check_out`, `order_id`, `trans_amt`) VALUES (?,?,?,?,?,?)";

    insert($query1,[$CUST_ID,$_SESSION['room']['id'],$frm_data['checkin'], $frm_data['checkout'], $ORDER_ID, $TXN_AMOUNT],'issssd'); // Notice the 'd' at the end, indicating a double type for the transaction amount

    $booking_id = mysqli_insert_id($con);

    // Insert booking details into database
    $query2 = "INSERT INTO `booking_details`(`booking_id`, `room_name`, `price`, `total_pay`, `user_name`, `phonenum`, `address`) VALUES (?,?,?,?,?,?,?)";

    insert($query2, [$booking_id, $_SESSION['room']['name'], $_SESSION['room']['price'], $TXN_AMOUNT, $frm_data['name'], $frm_data['phonenum'], $frm_data['address']], 'issssss');

    // Redirect to a success message or bookings page
    redirect('bookings.php?booking_status=success');
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Booking Processed</title>
</head>
<body>
<h1>Booking Confirmed</h1>
<p>Your booking has been successfully added. Thank you for choosing us!</p>
<p><a href="bookings.php">View My Bookings</a></p>
</body>
</html>
<!--
<html>
<head>
    <title>Booking Processed</title>
</head>
<body>
<h1>Booking Confirmed</h1>
<!-- You can show a confirmation message here or redirect to a specific page -->
</body>
</html>

?>

<html>
<head>
    <title>Processing</title>
</head>
<body>

<h1>Please do not refresh this page...</h1>

<form method="post" action="<?php /*echo PAYTM_TXN_URL */?>" name="f1">
    <?php
    /*			foreach($paramList as $name => $value) {
                    echo '<input type="hidden" name="' . $name .'" value="' . $value . '">';
                }
                */?>
    <input type="hidden" name="CHECKSUMHASH" value="<?php /*echo $checkSum */?>">
</form>

<script type="text/javascript">
    document.f1.submit();
</script>

</body>
</html>

-->