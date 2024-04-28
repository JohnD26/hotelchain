<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link  rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
    <?php require('inc/links.php'); ?>
    <title><?php echo $settings_r['site_title'] ?> - HOME</title>
    <style>
        .availability-form{
            margin-top: -50px;
            z-index: 2;
            position: relative;
        }

        @media screen and (max-width: 575px) {
            .availability-form{
                margin-top: 25px;
                padding: 0 35px;
            }
        }
    </style>
</head>
<body class="bg-light">

<?php require('inc/header.php'); ?>

<!-- Carousel -->

<div class="container-fluid px-lg-4 mt-4">
    <div class="swiper swiper-container">
        <div class="swiper-wrapper">
            <?php
            $res = selectAll('carousel');
            while($row = mysqli_fetch_assoc($res))
            {
                $path = CAROUSEL_IMG_PATH;
                echo <<<data
              <div class="swiper-slide">
                <img src="$path$row[image]" class="w-100 d-block">
              </div>
            data;
            }
            ?>
        </div>
    </div>
</div>

<!-- check availability form -->

<!--  <div class="container availability-form">
    <div class="row">
      <div class="col-lg-12 bg-white shadow p-4 rounded">
        <h5 class="mb-4">Find your Ideal Hotel!</h5>
        <form action="rooms.php">
          <div class="row align-items-end">
            <div class="col-lg-3 mb-3">
              <label class="form-label" style="font-weight: 500;">Check-in</label>
              <input type="date" class="form-control shadow-none" name="checkin" required>
            </div>
            <div class="col-lg-3 mb-3">
              <label class="form-label" style="font-weight: 500;">Check-out</label>
              <input type="date" class="form-control shadow-none" name="checkout" required>
            </div>
            <div class="col-lg-3 mb-3">
              <label class="form-label" style="font-weight: 500;">Adult</label>
              <select class="form-select shadow-none" name="adult">
                <?php /*
                  $guests_q = mysqli_query($con,"SELECT MAX(adult) AS `max_adult`, MAX(children) AS `max_children`
                    FROM `rooms` WHERE `status`='1' AND `removed`='0'");
                  $guests_res = mysqli_fetch_assoc($guests_q);

                  for($i=1; $i<=$guests_res['max_adult']; $i++){
                    echo"<option value='$i'>$i</option>";
                  }
                */?>
              </select>
            </div>
            <div class="col-lg-2 mb-3">
              <label class="form-label" style="font-weight: 500;">Children</label>
              <select class="form-select shadow-none" name="children">
                <?php /*
                  for($i=1; $i<=$guests_res['max_children']; $i++){
                    echo"<option value='$i'>$i</option>";
                  }
                */?>
              </select>
            </div>
            <input type="hidden" name="check_availability">
            <div class="col-lg-1 mb-lg-3 mt-2">
              <button type="Search" class="btn text-white shadow-none custom-bg">Search</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
-->

<!-- check availability form -->
<div class="container availability-form">
    <div class="row">
        <div class="col-lg-12 bg-white shadow p-4 rounded">
            <h5 class="mb-4">Find your Ideal Hotel!</h5>
            <form action="rooms.php">
                <div class="row align-items-end">
                    <!-- City Dropdown -->
                    <!-- City Input -->
                    <!-- City Input in index.php -->
                    <div class="col-lg-3 mb-3">
                        <label class="form-label" style="font-weight: 500;">City</label>
                        <input type="text" class="form-control shadow-none" name="city" placeholder="Enter city name">
                    </div>

                    <!-- Check-in Date -->
                    <div class="col-lg-3 mb-3">
                        <label class="form-label" style="font-weight: 500;">Check-in</label>
                        <input type="date" class="form-control shadow-none" name="checkin" required>
                    </div>
                    <!-- Check-out Date -->
                    <div class="col-lg-3 mb-3">
                        <label class="form-label" style="font-weight: 500;">Check-out</label>
                        <input type="date" class="form-control shadow-none" name="checkout" required>
                    </div>
                    <!-- Adult Selection -->
                    <div class="col-lg-2 mb-3">
                        <label class="form-label" style="font-weight: 500;">Adult</label>
                        <select class="form-select shadow-none" name="adult">
                            <?php

                            $guests_q = mysqli_query($con,"SELECT MAX(adult) AS `max_adult`, MAX(children) AS `max_children` FROM `rooms` WHERE `status`='1' AND `removed`='0'");
                            $guests_res = mysqli_fetch_assoc($guests_q);

                            for($i=1; $i<=$guests_res['max_adult']; $i++){
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>
                        </select>
                    </div>
                    <!-- Children Selection -->
                    <div class="col-lg-1 mb-3">
                        <label class="form-label" style="font-weight: 500;">Children</label>
                        <select class="form-select shadow-none" name="children">
                            <?php
                            // Adjusted for starting from 0 to include '0 children' option
                            for($i=0; $i<=$guests_res['max_children']; $i++){
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>
                        </select>
                    </div>
                    <input type="hidden" name="check_availability">
                    <div class="col-lg-1 mb-lg-3 mt-2">
                        <button type="submit" class="btn text-white shadow-none custom-bg">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>



<!-- Featured Hotels -->
<h2 class="mt-5 pt-4 mb-4 text-center fw-bold h-font">FEATURED HOTELS</h2>

<div class="container">
    <div class="row">
        <?php
        // The query  joins to fetch hotel name and chain name along with room details.
        $room_res = select("SELECT rooms.*, hotels.hotel_name, hotel_chains.chain_name 
                          FROM rooms 
                          JOIN hotels ON rooms.hotel_id = hotels.hotel_id 
                          JOIN hotel_chains ON hotels.chain_id = hotel_chains.chain_id 
                          WHERE rooms.status=? AND rooms.removed=? 
                          ORDER BY rooms.id DESC LIMIT 3", [1, 0], 'ii');

        while($room_data = mysqli_fetch_assoc($room_res)) {
            // Fetching features of the room
            $features_data = "";
            $fea_q = mysqli_query($con, "SELECT f.name FROM `features` f 
                                     INNER JOIN `room_features` rfea ON f.id = rfea.features_id 
                                     WHERE rfea.room_id = '{$room_data['id']}'");
            while($fea_row = mysqli_fetch_assoc($fea_q)) {
                $features_data .= "<span class='badge rounded-pill bg-light text-dark text-wrap me-1 mb-1'>{$fea_row['name']}</span>";
            }

            // Fetching facilities of the room
            $facilities_data = "";
            $fac_q = mysqli_query($con, "SELECT f.name FROM `facilities` f 
                                     INNER JOIN `room_facilities` rfac ON f.id = rfac.facilities_id 
                                     WHERE rfac.room_id = '{$room_data['id']}'");
            while($fac_row = mysqli_fetch_assoc($fac_q)) {
                $facilities_data .= "<span class='badge rounded-pill bg-light text-dark text-wrap me-1 mb-1'>{$fac_row['name']}</span>";
            }

            // Fetching thumbnail image of the room
            $room_thumb = ROOMS_IMG_PATH . "thumbnail.jpg"; // Default thumbnail
            $thumb_q = mysqli_query($con, "SELECT * FROM `room_images` 
                                       WHERE `room_id`='{$room_data['id']}' AND `thumb`='1'");
            if(mysqli_num_rows($thumb_q) > 0) {
                $thumb_res = mysqli_fetch_assoc($thumb_q);
                $room_thumb = ROOMS_IMG_PATH . $thumb_res['image'];
            }

            // Constructing the booking button
            $book_btn = "";
            if(!$settings_r['shutdown']) {
                $login = isset($_SESSION['login']) && $_SESSION['login'] ? 1 : 0;
                $book_btn = "<button onclick='checkLoginToBook($login, {$room_data['id']})' class='btn btn-sm text-white custom-bg shadow-none'>Book Now</button>";
            }

            // Fetching and displaying the room rating
            $rating_data = "";
            $rating_q = "SELECT AVG(rating) AS `avg_rating` FROM `rating_review` WHERE `room_id`='{$room_data['id']}'";
            $rating_res = mysqli_query($con, $rating_q);
            $rating_fetch = mysqli_fetch_assoc($rating_res);
            if($rating_fetch && $rating_fetch['avg_rating'] != NULL) {
                $rating_data = "<div class='rating mb-4'><h6 class='mb-1'>Rating</h6><span class='badge rounded-pill bg-light'>";
                for($i = 0; $i < floor($rating_fetch['avg_rating']); $i++) {
                    $rating_data .= "<i class='bi bi-star-fill text-warning'></i> ";
                }
                $rating_data .= "</span></div>";
            }

            // Displaying the room card with hotel name and chain name
            echo <<<data
          <div class="col-lg-4 col-md-6 my-3">
            <div class="card border-0 shadow" style="max-width: 350px; margin: auto;">
              <img src="$room_thumb" class="card-img-top">
              <div class="card-body">
              
                <h5>{$room_data['hotel_name']}</h5>        
                <small class="text-muted">Room: {$room_data['name']}</small>
                <h6 class="mb-4">CAD {$room_data['price']} /night</h6>
                <div class="features mb-4">{$features_data}</div>
                <div class="facilities mb-4">{$facilities_data}</div>
                <div class="guests mb-4">
                  <span class="badge rounded-pill bg-light text-dark text-wrap">{$room_data['adult']} Adults</span>
                  <span class="badge rounded-pill bg-light text-dark text-wrap">{$room_data['children']} Children</span>
                </div>
                {$rating_data}
                <div class="d-flex justify-content-evenly mb-2">
                  {$book_btn}
                  <a href="room_details.php?id={$room_data['id']}" class="btn btn-sm btn-outline-dark shadow-none">More details</a>
                </div>
              </div>
            </div>
          </div>
        data;
        }
        ?>
        <div class="col-lg-12 text-center mt-5">
            <a href="rooms.php" class="btn btn-sm btn-outline-dark rounded-0 fw-bold shadow-none">More Rooms >>></a>
        </div>
    </div>
</div>





<!-- Our Facilities -->

<h2 class="mt-5 pt-4 mb-4 text-center fw-bold h-font">OUR FACILITIES</h2>

<div class="container">
    <div class="row justify-content-evenly px-lg-0 px-md-0 px-5">
        <?php
        $res = mysqli_query($con,"SELECT * FROM `facilities` ORDER BY `id` DESC LIMIT 5");
        $path = FACILITIES_IMG_PATH;

        while($row = mysqli_fetch_assoc($res)){
            echo<<<data
            <div class="col-lg-2 col-md-2 text-center bg-white rounded shadow py-4 my-3">
              <img src="$path$row[icon]" width="60px">
              <h5 class="mt-3">$row[name]</h5>
            </div>
          data;
        }
        ?>

        <div class="col-lg-12 text-center mt-5">
            <a href="facilities.php" class="btn btn-sm btn-outline-dark rounded-0 fw-bold shadow-none">More Facilities >>></a>
        </div>
    </div>
</div>

<!-- Ratings from our Trusted Clients -->

<h2 class="mt-5 pt-4 mb-4 text-center fw-bold h-font">Ratings from some of our Previous Customers</h2>

<div class="container mt-5">
    <div class="swiper swiper-testimonials">
        <div class="swiper-wrapper mb-5">
            <?php

            $review_q = "SELECT rr.*,uc.name AS uname, uc.profile, r.name AS rname FROM `rating_review` rr
            INNER JOIN `user_cred` uc ON rr.user_id = uc.id
            INNER JOIN `rooms` r ON rr.room_id = r.id
            ORDER BY `sr_no` DESC LIMIT 6";

            $review_res = mysqli_query($con,$review_q);
            $img_path = USERS_IMG_PATH;

            if(mysqli_num_rows($review_res)==0){
                echo 'No reviews yet!';
            }
            else
            {
                while($row = mysqli_fetch_assoc($review_res))
                {
                    $stars = "<i class='bi bi-star-fill text-warning'></i> ";
                    for($i=1; $i<$row['rating']; $i++){
                        $stars .= " <i class='bi bi-star-fill text-warning'></i>";
                    }

                    echo<<<slides
                <div class="swiper-slide bg-white p-4">
                  <div class="profile d-flex align-items-center mb-3">
                    <img src="$img_path$row[profile]" class="rounded-circle" loading="lazy" width="30px">
                    <h6 class="m-0 ms-2">$row[uname]</h6>
                  </div>
                  <p>
                    $row[review]
                  </p>
                  <div class="rating">
                    $stars
                  </div>
                </div>
              slides;
                }
            }

            ?>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <div class="col-lg-12 text-center mt-5">
        <a href="about.php" class="btn btn-sm btn-outline-dark rounded-0 fw-bold shadow-none">Know More >>></a>
    </div>
</div>


<!-- Password reset modal and code -->

<div class="modal fade" id="recoveryModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="recovery-form">
                <div class="modal-header">
                    <h5 class="modal-title d-flex align-items-center">
                        <i class="bi bi-shield-lock fs-3 me-2"></i> Set up New Password
                    </h5>
                </div>
                <div class="modal-body">
                    <div class="mb-4">
                        <label class="form-label">New Password</label>
                        <input type="password" name="pass" required class="form-control shadow-none">
                        <input type="hidden" name="email">
                        <input type="hidden" name="token">
                    </div>
                    <div class="mb-2 text-end">
                        <button type="button" class="btn shadow-none me-2" data-bs-dismiss="modal">CANCEL</button>
                        <button type="submit" class="btn btn-dark shadow-none">SUBMIT</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<?php require('inc/footer.php'); ?>

<?php

if(isset($_GET['account_recovery']))
{
    $data = filteration($_GET);

    $t_date = date("Y-m-d");

    $query = select("SELECT * FROM `user_cred` WHERE `email`=? AND `token`=? AND `t_expire`=? LIMIT 1",
        [$data['email'],$data['token'],$t_date],'sss');

    if(mysqli_num_rows($query)==1)
    {
        echo<<<showModal
          <script>
            var myModal = document.getElementById('recoveryModal');

            myModal.querySelector("input[name='email']").value = '$data[email]';
            myModal.querySelector("input[name='token']").value = '$data[token]';

            var modal = bootstrap.Modal.getOrCreateInstance(myModal);
            modal.show();
          </script>
        showModal;
    }
    else{
        alert("error","Invalid or Expired Link !");
    }

}

?>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<script>
    var swiper = new Swiper(".swiper-container", {
        spaceBetween: 30,
        effect: "fade",
        loop: true,
        autoplay: {
            delay: 3500,
            disableOnInteraction: false,
        }
    });

    var swiper = new Swiper(".swiper-testimonials", {
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        slidesPerView: "3",
        loop: true,
        coverflowEffect: {
            rotate: 50,
            stretch: 0,
            depth: 100,
            modifier: 1,
            slideShadows: false,
        },
        pagination: {
            el: ".swiper-pagination",
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            640: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 2,
            },
            1024: {
                slidesPerView: 3,
            },
        }
    });

    // recover account

    let recovery_form = document.getElementById('recovery-form');

    recovery_form.addEventListener('submit', (e)=>{
        e.preventDefault();

        let data = new FormData();

        data.append('email',recovery_form.elements['email'].value);
        data.append('token',recovery_form.elements['token'].value);
        data.append('pass',recovery_form.elements['pass'].value);
        data.append('recover_user','');

        var myModal = document.getElementById('recoveryModal');
        var modal = bootstrap.Modal.getInstance(myModal);
        modal.hide();

        let xhr = new XMLHttpRequest();
        xhr.open("POST","ajax/login_register.php",true);

        xhr.onload = function(){
            if(this.responseText == 'failed'){
                alert('error',"Account reset failed!");
            }
            else{
                alert('success',"Account Reset Successful !");
                recovery_form.reset();
            }
        }

        xhr.send(data);
    });

</script>

</body>
</html>
