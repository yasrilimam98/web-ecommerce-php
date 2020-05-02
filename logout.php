<?php
session_start();


session_destroy();

		echo "<script>alert('Anda telah Logout');</script>";
		echo "<script>location = 'index.php';</script>";