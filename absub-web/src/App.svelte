<script lang="js">
	import { onMount } from 'svelte';
	let soundMetaCache;
	async function getSoundMeta() {
		if (soundMetaCache) return soundMetaCache;
		const res = await fetch(
			"https://raw.githubusercontent.com/ronthecookie/arc86/master/resourcepack/assets/arc86/sounds.json"
		);
		soundMetaCache = await res.json();
		return soundMetaCache;
	}
	async function getSoundMetaForID(id) {
		const fullMeta = await getSoundMeta();
		const meta = Object.keys(fullMeta)
			.filter((i) => fullMeta[i].id == id)
			.map((i) => fullMeta[i])[0];
		if (!meta) throw new Error("Sound not found by ID");
		return {
			url: `https://raw.githubusercontent.com/ronthecookie/arc86/master/resourcepack/assets/arc86/sounds/${meta.sounds[0].replace(
				"arc86:",
				""
			)}.ogg`,
			name: meta.sounds[0],
			ignore: meta.absubIgnore || false,
			hasSubs: typeof meta.absub == "object"
		};
	};
	let wavesurfer;
	onMount(() => {
		wavesurfer = WaveSurfer.create({
			container: '#waveform',
			waveColor: 'violet',
			progressColor: 'purple'
		});
	});
	const points = [];
	let audioPlayer;
	function addEmptyPoint() {
		points.push({ person: "", msg: "", time: `00:${wavesurfer.getCurrentTime()}` });
	}
	let transformed = {};
	let soundID = 0;
	let soundURL = "";
	$: {
		transformed = {};
		let lastPerson;
		for (let { msg, person, time } of points) {
			const [min, sec] = time.split(":").map((x) => parseFloat(x));
			const ticks = ~~(20 * (min * 60 + sec));
			if (lastPerson && (!person || person == "")) person = lastPerson;
			transformed[ticks] = {
				person,
				msg,
			};
			lastPerson = person;
		}
	}
	let soundMeta;
	$: {
		soundMeta = getSoundMetaForID(soundID);
		soundMeta.then(x => wavesurfer.load(x.url));
	}
</script>

<main>
	<h1>absub web</h1>
	<p>
		subtitles for
		<a href="https://discord.gg/5f3za6F">Falling From Grace</a>
	</p>

	<label for="id">sound #</label>
	<input type="number" name="id" bind:value={soundID} />
	<br />
	{#await soundMeta}
		<p>...loading sound...</p>
	{:then sm}
		<p>found sound: <code>{sm.name}</code></p>
		{#if sm.ignore}
			<p style="background: red">This sound does not require subtitles</p>
		{:else if sm.hasSubs}
			<p style="background: orange">This sound may already have subtitles</p>
		{/if}
		<button on:click={wavesurfer.playPause()} >Play/Pause</button>
	{:catch err}
		<p style="color: red">{err.message}</p>
	{/await}
	<div id="waveform"></div>

	<hr />
	<button on:click={addEmptyPoint}>add point</button>
	<ul>
		{#each points as point, i}
			<li>
				point #{i + 1} at time
				<input type="text" placeholder="13:37" bind:value={point.time} />
				where
				<input type="text" placeholder="Fart Man" bind:value={point.person} />
				says
				<input
					type="text"
					placeholder="I farted on my bed!"
					bind:value={point.msg}
				/>
			</li>
		{/each}
	</ul>

	<code>
		{JSON.stringify({ absub: { id: soundID, points: transformed } })}
	</code>

	<p>
		back to
		<a href="//ckie.dev">ckie.dev</a>
	</p>
</main>

<style>
</style>
