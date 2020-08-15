//@ts-check
const path = require("path");
const { writeFileSync } = require("fs");
const langPath = path.resolve(
	__dirname,
	"assets",
	"minecraft",
	"lang",
	"en_us.json"
);
const lang = require(langPath);

lang["arc86.version"] = require("child_process").execSync(
	"git rev-parse --short HEAD"
).toString("utf8").trimRight();

writeFileSync(langPath, JSON.stringify(lang, null, 4));
