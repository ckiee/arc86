import fetch from "node-fetch";

const data = `    SCP-019: Sophia Light
    SCP-027: Quikngruvn
    SCP-049: Gabriel Jade
    SCP-060: Dexanote
    SCP-106: Dr Gears
    SCP-109: Kain Pathos Crow
    SCP-207: Aeish
    SCP-323: [unknown]
    SCP-330: Dr Kondraki
    SCP-352: Dr Gears
    SCP-407: Pair of Ducks
    SCP-426: Flah
    SCP-427: Dr Ouros
    SCP-458: Palhinuk
    SCP-500: far2
    SCP-553: Paktu
    SCP-714: Arcalane
    SCP-729: Sirava
    SCP-999: ProfSnider
    SCP-1032: MrAesthetics
    SCP-1063: Dr Stanton
    SCP-1299: Anonymouse99
    SCP-1833: Roget
	SCP-3456: DrBleep`;
const scps = data
	.match(/SCP-\d+/g)
	?.map(x => `http://www.scpwiki.com/${x.toLowerCase()}`) || [];

async function bootstrap() {
	for (const scp of scps) {
		const res = await fetch(scp);
		const text = await res.text();
		const pattern = /Object Class:<\/strong> (\w+)<\/p>/g;
		console.log(scp, text.match(pattern));
	}
}
bootstrap();
