<script>
  //party/hearty-boyz
  import Card from '$lib/Card.svelte';
  import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        h1#announcement- Announcement!
        h2#cascadia-free-forever- Cascadia Free Forever!
        h3#the-movement-is-on-us- the movement is on us!
        p We have been duped by the Pimp Trump and hearded by his cowboys into our last truck ride.
        p No longer, simply St. John’s Jim, I hereby crown myself as King of Cascadia. Protector of the coast against all enemies, both foreign and Governmental.
        p But what previously were simply stories: untruths meant only for idle minds, have now become blazing hot metaphors for the eternal struggle we are in.
        p The evil of the Tommies of Oregon, the Rationality of the Rogers of Washington, and the magic of the Southwicks of California.
        p For a magical time, I visited a land of great visions. The vision of the fringes of our near-prosperous America. The not quite third-world life that exists beneath the great spires and arches of the St. John’s Bridge.
        p Here they are: Read them and laugh.
        h2#hail-cascadia- Hail! Cascadia!
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>
