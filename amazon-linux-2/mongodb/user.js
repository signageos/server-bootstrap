db.createUser({
	user: "root",
	pwd: "---PASS---",
	roles: [
		{ role: "userAdminAnyDatabase", db: "admin" },
		"readWriteAnyDatabase",
		"clusterAdmin"
	]
});

var rsConfig = rs.conf();

rsConfig.members.push({
	"_id" : 3,
	"host" : "54.93.58.154:27017",
	"priority" : 0.9
});

rs.reconfig(rsConfig)
