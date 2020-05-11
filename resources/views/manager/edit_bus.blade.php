<!DOCTYPE html>
<html>
<head>
	<title>Edit Page</title>
</head>
<body>
	<form method="post" >
		@csrf
		ID: <input type="text" disabled name="id" value={{$bus->id}} > <br>
		Name: <input type="text" name="name" value={{$bus->name}}> <br>
		Location: <input type="text" name="location"value={{$bus->location}} > <br>
		Seat Row: <input type="text" name="seat_row" value={{$bus->seat_row}}> <br>
		Seat Column: <input type="text" name="seat_column" value={{$bus->seat_column}}> <br>
		Operator: <input type="text" name="operator" value={{$bus->operator}}> <br>
		Company: <input type="text" name="company" value={{$bus->company}}> <br>
		<input type="submit" name="submit" value="Submit" >
	</form>

	@foreach($errors->all() as $err)
		{{$err}} <br>
	@endforeach
</body>
</html>