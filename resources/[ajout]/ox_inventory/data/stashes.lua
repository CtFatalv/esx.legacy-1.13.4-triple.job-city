return {
	{
		target = {
			loc = vec3(451.25, -994.28, 29.70),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Casier personnel',
			debug = false
		},
		name = 'policelocker',
		label = 'Casier personnel',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		target = {
			loc = vec3(452.02, -972.72, 29.68),
			length = 0.40,
			width = 1.34,
			heading = 0,
            minZ = 29.68,
            maxZ = 31.74,
			label = 'Coffre Patron',
			debug = false
		},
		name = 'policepatronlocker',
		label = 'Coffre Patron',
		owner = false,
		slots = 70,
		weight = 70000,
		groups = {['police'] = 4}
	},

	{
		target = {
			loc = vec3(291.96, -1419.06, 28.82),
			length = 1.34,
			width = 1.0,
			heading = 50,
            minZ=28.82,
            maxZ=30.66,
			label = 'Coffre Patron',
			debug = false
		},
		name = 'emspatronlocker',
		label = 'Coffre Patron',
		owner = false,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 3}
	},

	{
		target = {
			loc = vec3(301.82, -600.99, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Casier personnel',
			debug = false
		},
		name = 'emslocker',
		label = 'Casier personnel',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},

	{
		target = {
			loc = vec3(355.86, -1417.28, 31.94),
			length = 1.3,
			width = 1.44,
			heading = 50,
			minZ=31.94,
			maxZ=33.78,
			label = 'Stockage EMS',
			debug = false
		},
		name = 'emsjoblocker',
		label = 'Stockage EMS',
		owner = false,
		slots = 30,
		weight = 70000,
		groups = {['ambulance'] = 1}
	},

	{
		target = {
			loc = vec3(902.35, -153.59, 82.5),
			length = 3.2,
			width = 1.0,
			heading = 329,
            minZ=81.45,
            maxZ=82.45,
			label = 'Coffre patron',
			debug = false
		},
		name = 'taxilocker',
		label = 'Coffre patron',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['taxi'] = 4}
	},

	{
		target = {
			loc = vec3(92.07, -1291.26, 28.27),
			length = 0.8,
			width = 0.65,
			heading = 30,
            minZ=28.27,
            maxZ=29.82,
			label = 'Coffre Patron',
			debug = false
		},
		name = 'Nightclubpatronlocker',
		label = 'Coffre Patron',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['nightclub'] = 3}
	},

	{
		target = {
			loc = vec3(106.19, -1298.87, 27.77),
			length = 1.0,
			width = 2.6,
			heading = 30,
            minZ=27.77,
            maxZ=30.37,
			label = 'Casier personnel',
			debug = false
		},
		name = 'nightclubpersonnellocker',
		label = 'Casier personnel',
		owner = true,
		slots = 30,
		weight = 70000,
		groups = {['nightclub'] = 0}
	},

	{
		target = {
			loc = vec3(127.86, -1281.91, 28.27),
			length = 1.2,
			width = 0.85,
			heading = 300,
            minZ=28.27,
            maxZ=29.32,
			label = 'Réfrigirateur',
			debug = false
		},
		name = 'Nightclubfrigolocker',
		label = 'Réfrigirateur',
		owner = false,
		slots = 100,
		weight = 100000,
		groups = {['nightclub'] = 0}
	},

	{
        target = {
            loc = vec3(128.13, -1283.45, 28.47),
            length = 0.6,
            width = 1.6,
            heading = 65,
            minZ=28.07,
            maxZ=29.47,
            label = 'Bar',
			debug = false
        },
        name = 'Nightclubbarlocker',
        label = 'Bar',
        owner = false,
        slots = 2,
        weight = 500
    },
}