<!DOCTYPE html>
<html>
<head>
	
</head>
<body>	
	 | 
	<a href="/system/buscounter/add">Add New</a>| 
	<a href="/system/manager/home">Back</a>| 
	<a href="/logout">Logout</a>

	<table border="1">
		<tr>
			<th>Name</th>
			<th>Location</th>
			<th>ACTION</th>
		</tr>
		
		@foreach($counters as $counter)
		<tr>
			<td>{{$counter->name}}</td>
			<td>{{$counter->location}}</td>
			<td>
				<a href="{{route('manager.editbus',$counter->id)}}">Edit</a> | 
				<a href="#">Delete</a>
			</td>
		</tr>
		@endforeach
	</table>

</body>
</html>