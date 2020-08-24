//@ts-check
const path = require("path");
const { writeFileSync } = require("fs");
const langPath = path.resolve(
	__dirname,
	"data",
	"arc86",
	"functions",
	"debugstick",
	"genver.mcfunction"
);

const lastCommitHash = require("child_process")
	.execSync("git rev-parse --short HEAD")
	.toString("utf8")
	.trimRight();

const msg = [
	{ text: "srv=" },
	{ text: lastCommitHash, color: "red" },
	{ text: " | ", color: "dark_gray" },
	{ text: "client=", color: "white" },
	{ translate: "arc86.version", color: "red" },
];
writeFileSync(
	langPath,
	`# Auto-generated by version.js
execute positioned -108 152 31 run title @a[distance=..25] actionbar ${JSON.stringify(
		msg
	)}
`
);
