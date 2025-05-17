<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hotel Booking Page</title>
<style>
/* Base styles similar to your home page */
/* Page base styling */
body {
    font-family: Arial, sans-serif;
    background-color: lightblue; /* light green background matching home page */
    margin: 0;
    padding: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

/* Page Title */
h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #4CAF50;  /* Home header green */
}

/* Container wrapping the cards */
.card-wrapper {
    width: 100%;
    max-width: 1100px;
    margin: auto;
}

/* Card container styling */
.card-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
}

/* Hotel Card Styles */
.hotel-card {
    background-color: #fff;
    width: 250px;
    border-radius: 10px;
    border: 2px solid #66BB6A;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    transition: transform 0.2s, border-color 0.2s;
    text-decoration: none;
    color: inherit;
}

.hotel-card:hover {
    transform: scale(1.03);
    border-color: #43A047;
}

/* Image */
.hotel-card img {
    width: 100%;
    height: 150px;
    object-fit: cover;
}

/* Hotel info */
.hotel-info {
    padding: 15px;
}

.hotel-info h3 {
    margin: 0 0 10px;
    font-size: 18px;
    color: #4CAF50;
}

.hotel-info p {
    margin: 5px 0;
    color: #555;
}

</style>
</head>
<body>

	<h1>Available Hotels</h1>

	<div class="card-container">
		<a class="hotel-card" href="bookConfirm.jsp?hotel=Hotel%20Paradise"> <img
			src="css/new1.jpg" alt="Hotel 1">
			<div class="hotel-info">
				<h3>Hotel Paradise</h3>
				<p>Location: Kandy</p>
				<p>Price: Rs.12000/night</p>
				<p>Price: Rs.26000/Day and Night</p>

			</div>
		</a> <a class="hotel-card" href="bookConfirm.jsp?hotel=Sea%20View%20Resort">
			<img src="css/new2.jpg" alt="Hotel 2">
			<div class="hotel-info">
				<h3>Sea View Resort</h3>
				<p>Location: Galle</p>
				<p>Price: Rs.15000/night</p>
				<p>Price: Rs.27000/Day and Night</p>

			</div>
		</a> <a class="hotel-card" href="bookConfirm.jsp?hotel=Mountain%20Retreat">
			<img src="css/new3.jpg" alt="Hotel 3">
			<div class="hotel-info">
				<h3>Mountain Retreat</h3>
				<p>Location: Colombo</p>
				<p>Price: Rs.45000/night</p>
				<p>Price: Rs.54000/Day and Night</p>

			</div>
		</a> <a class="hotel-card" href="bookConfirm.jsp?hotel=City%20Lights%20Hotel">
			<img src="css/new4.jpg" alt="Hotel 4">
			<div class="hotel-info">
				<h3>City Lights Hotel</h3>
				<p>Location: Colombo</p>
				<p>Price: Rs.55000/night</p>
				<p>Price: Rs.60000/Day and Night</p>

			</div>
		</a> <a class="hotel-card" href="bookConfirm.jsp?hotel=Desert%20Oasis"> <img
			src="css/new5.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Desert Oasis</h3>
				<p>Location: Galle</p>
				<p>Price: Rs.18000/night</p>
				<p>Price: Rs.43000/Day and Night</p>

			</div>
		</a>
		<a class="hotel-card" href="bookConfirm.jsp?hotel=Desert%20Oasis"> <img
			src="css/new6.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Cinnamon View</h3>
				<p>Location: Galle</p>
				<p>Price: Rs.16000/night</p>
				<p>Price: Rs.44000/Day and Night</p>

			</div>
		</a>
		<a class="hotel-card" href="bookConfirm.jsp?hotel=Desert%20Oasis"> <img
			src="css/new7.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Bloom Cabana</h3>
				<p>Location: Ella</p>
				<p>Price: Rs.17000/night</p>
				<p>Price: Rs.48000/Day and Night</p>

			</div>
		</a><a class="hotel-card" href="bookConfirm.jsp?hotel=Desert%20Oasis"> <img
			src="css/new8.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Queen Silver</h3>
				<p>Location: Galle</p>
				<p>Price: Rs.48000/night</p>
				<p>Price: Rs.63000/Day and Night</p>

			</div>
		</a><a class="hotel-card" href="bookConfirm.jsp?hotel=Desert%20Oasis"> <img
			src="css/new9.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Dark Crown</h3>
				<p>Location: Colombo</p>
				<p>Price: Rs.38000/night</p>
				<p>Price: Rs.41000/Day and Night</p>

			</div>
		</a><a class="hotel-card" href="bookConfirm.jsp?hotel=Desert%20Oasis"> <img
			src="css/new10.jpg" alt="Hotel 5">
			<div class="hotel-info">
				<h3>Villa Bay</h3>
				<p>Location: Mathara</p>
				<p>Price: Rs.28000/night</p>
				<p>Price: Rs.45000/Day and Night</p>

			</div>
		</a>
	</div>

</body>
</html>