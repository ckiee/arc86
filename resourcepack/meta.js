//@ts-check
const path = require("path");
const { writeFileSync, readFileSync } = require("fs");
const metaPath = path.resolve(__dirname, "pack.mcmeta");
const meta = JSON.parse(readFileSync(metaPath).toString());

meta.pack.description[1].text = require("child_process")
	.execSync("git rev-parse --short HEAD")
	.toString("utf8")
	.trimRight();

writeFileSync(metaPath, JSON.stringify(meta, null, 4));
