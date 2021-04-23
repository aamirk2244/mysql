  $username = "root";
		$password = "";
		try {
		$conn = new PDO("mysql:host=localhost;dbname=your_database_name", $username, $password);
		// set the PDO error mode to exception
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
		$query = $conn->prepare("INSERT INTO registrations_table VALUES (?, ?, ?, ?, ?);"); // using prepared statement to avoid mysql injection
		$query->execute([value1, value2, value3, value3,value4]);	
		
    } catch(PDOException $e) {
		echo "Connection failed: " . $e->getMessage();
		}
