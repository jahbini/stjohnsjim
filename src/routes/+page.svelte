<script>
  //./index
  import Card from '$lib/Card.svelte';
  import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        h1#announcement- Announcement!
        h2#cascadia-free-forever- Cascadia Free Forever!
        p America, no, Western Civi... No, all the civilizations of the World are in deep turmoil as we shift from rule by Objective Democracy to rule by Subjective Gangsta.
        p No longer, simply St. John’s Jim, I hereby crown myself as King of Cascadia. Protector of the coast against all enemies, both foreign and Governmental.
        p But what previously were simply stories: untruths meant only for idle minds, have now become blazing hot metaphors for the eternal struggle we are in.
        p The evil of the Tommies of Oregon, the Rationality of the Rogers of Washington, and the magic of the Southwicks of California. It is all in these stories.
        p For a magical time, I visited a land of great visions. The vision of the fringes of our near-prosperous America. The not quite third-world life that exists beneath the great spires and arches of the St. John’s Bridge.
        p Here they are: Read them and laugh.
        p
          | Here is this weeks favorite --
          span.h4 the Unique birth of the Roller Skating Legend, 
          a(href='http://stjohnsjim.com/roller-derby/bouncy-boom-gets-her-skates.html')
            span.h3 Bouncy Boom
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>
