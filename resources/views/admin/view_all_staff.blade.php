<!DOCTYPE html>
<html>
<head>
</head>
<body>	
 	| 
	<a href="/system/admin/home">Back</a>| 
	<a href="/system/supportstaff/add">Add New</a>|
	<a href="/logout">Logout</a>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Company</th>
			<th>Registered</th>
			<th>ACTION</th>
		</tr>
		
		@foreach($users as $user)
		<tr>
			<td>{{$user->id}}</td>
			<td>{{$user->name}}</td>
			<td>{{$user->email}}</td>
			<td>{{$user->company}}</td>
			<td>{{$user->registered}}</td>
			<td>
				<a href="#">Edit</a> | 
				<a href="{{route('admin.deletemanager',$user->id)}}">Delete</a>
			</td>
		</tr>
		@endforeach
	</table>

</body>
</html>