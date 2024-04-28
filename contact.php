<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php require('inc/links.php'); ?>
    <title><?php echo $settings_r['site_title'] ?> - CONTACT</title>
</head>
<body class="bg-light">

<?php require('inc/header.php'); ?>

<div class="my-5 px-4">
    <h2 class="fw-bold h-font text-center">CONTACT US</h2>
    <div class="h-line bg-dark"></div>
    <p class="text-center mt-3">
        We are here anytime to answer your questions 24/7 <br> Offering the best services to our cliets
        is our priority
    </p>
</div>

<div class="container">
    <div class="row">
    </div>
    <div class="col-lg-6 col-md-6 px-4">
        <div class="bg-white rounded shadow p-4">
            <form method="POST">
                <h5>Send a message</h5>
                <div class="mt-3">
                    <label class="form-label" style="font-weight: 500;">Name</label>
                    <input name="name" required type="text" class="form-control shadow-none">
                </div>
                <div class="mt-3">
                    <label class="form-label" style="font-weight: 500;">Email</label>
                    <input name="email" required type="email" class="form-control shadow-none">
                </div>
                <div class="mt-3">
                    <label class="form-label" style="font-weight: 500;">Subject</label>
                    <input name="subject" required type="text" class="form-control shadow-none">
                </div>
                <div class="mt-3">
                    <label class="form-label" style="font-weight: 500;">Message</label>
                    <textarea name="message" required class="form-control shadow-none" rows="5" style="resize: none;"></textarea>
                </div>
                <button type="submit" name="send" class="btn text-white custom-bg mt-3">SEND</button>
            </form>
        </div>
    </div>
</div>
</div>


<?php

if(isset($_POST['send']))
{
    $frm_data = filteration($_POST);

    $q = "INSERT INTO `user_queries`(`name`, `email`, `subject`, `message`) VALUES (?,?,?,?)";
    $values = [$frm_data['name'],$frm_data['email'],$frm_data['subject'],$frm_data['message']];

    $res = insert($q,$values,'ssss');
    if($res==1){
        alert('success','Mail sent!');
    }
    else{
        alert('error','Server Down! Try again later.');
    }
}
?>

<?php require('inc/footer.php'); ?>

</body>
</html>
