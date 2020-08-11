//@ts-check
const fs = require("fs");
const sounds = require("../resourcepack/assets/arc86/sounds.json");
const lines = Object.keys(sounds)
	.map(key => {
		const { id, points } = sounds[key].absub;
		return Object.keys(points).map((spk, i, arr) => {
			const pk = parseInt(spk, 10);
			const pv = points[pk];
			const pkn = parseInt(arr[i + 1], 10);
			return `execute if score $id absubState matches ${id} if score $time absubState matches ${
				pkn ? `${pk}..${pkn - 1}` : pv
			} run title @s actionbar ${[
				{ text: pv.person, bold: true },
				{ text: ": ", bold: true },
				{ text: pv.msg },
			]}`;
		});
	})
	.reduce((a, b) => a.concat(b));

fs.writeFileSync(
	require("path").join(
		"__dirname",
		"data",
		"arc86",
		"functions",
		"absub",
		"gentick.mcfunction"
	),
	lines.join("\n"),
	{ encoding: "utf8" }
);
