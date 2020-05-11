<!DOCTYPE html>
<html>
<head>
	
</head>
<body>	
	 | 
	<a href="/system/admin/home">Back</a>| 
	<a href="/logout">Logout</a>

	<table border="1">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Company</th>
			<th>Registered</th>
			<th>ACTION</th>
		</tr>
		
		@foreach($managers as $manager)
		<tr>
			<td>{{$manager->name}}</td>
			<td>{{$manager->email}}</td>
			<td>{{$manager->company}}</td>
			<td>{{$manager->registered}}</td>
			<td>
				<a href="#">Edit</a> | 
				<a href="{{route('admin.deletemanager',$manager->id)}}">Delete</a>
			</td>
		</tr>
		@endforeach
	</table>

</body>
</html>