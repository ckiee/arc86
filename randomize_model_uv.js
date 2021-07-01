const fs = require("fs");

function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1) + min); //The maximum is inclusive and the minimum is inclusive
}

const path = process.argv[process.argv.length - 1];
let model = require(path);

model.elements = model.elements.map(ele => {
    Object.keys(ele.faces).forEach(k => {
		const gRII = getRandomIntInclusive;
        ele.faces[k].uv = [ gRII(6, 14), gRII(1, 12), gRII(1, 16), gRII(1, 16) ]
    });
	return ele;
});

fs.writeFileSync(path, JSON.stringify(model, null, 4));
