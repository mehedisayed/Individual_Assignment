<!DOCTYPE html>
<html>
<head>
	<title>Add Page</title>
</head>
<body>
	<form method="post" >
		@csrf
		Name: <input type="text" name="name" > <br>
		Location: <input type="text" name="location" > <br>
		Seat Row: <input type="text" name="seat_row" > <br>
		Seat Column: <input type="text" name="seat_column" > <br>
		Operator: <input type="text" name="operator" > <br>
		Company: <input type="text" name="company" > <br>
		<input type="submit" name="submit" value="Submit" >
	</form>

	@foreach($errors->all() as $err)
		{{$err}} <br>
	@endforeach
</body>
</html>