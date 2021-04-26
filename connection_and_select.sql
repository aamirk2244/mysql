// now we will prepare the query for extraction of data 		$username = "root";


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		$username = "root";
		$password = "";
		try {
		$conn = new PDO("mysql:host=localhost;dbname=nutec", $username, $password);
		// set the PDO error mode to exception
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$query = $conn->prepare("SELECT * FROM registrations WHERE Roll_No = ? ;"); // using prepared statement to avoid mysql injection

    } catch(PDOException $e) {
		echo "Connection failed: " . $e->getMessage();
		}
		
		$query->execute([$_POST['Name']]);             // the argument is a variable/value to the above place holder (?)
		$result = $query->fetchAll(PDO::FETCH_ASSOC);          // fetching the data into result
		print_r($result);               // this will print all the rows which are fetched   $result is an array of all the rows 

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





		if ($result == null)
		{

			// it means nothing found
		}
		
		
