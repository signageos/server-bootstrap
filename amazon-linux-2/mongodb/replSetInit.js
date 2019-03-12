rs.initiate(
	{
		_id: "monitoring",
		version: 1,
		members: [
			{ _id: 0, host : "10.0.8.4:27017" }
		]
	}
);
