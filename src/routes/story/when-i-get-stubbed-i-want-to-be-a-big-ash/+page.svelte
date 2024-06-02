<script>
  //story/when-i-get-stubbed-i-want-to-be-a-big-ash
  import Card from '$lib/Card.svelte';
  import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        p People used to smoke.  Lots.  Many still do, I’m not ag’in it.  People are vegetarians now.  I’m not ag’in it.
        p If butts could talk, the only way we could tell them is by the brand.
        hr
        p American Spirit: I recognize my brand, my smoke, my savor. I bet it’s from Harry.
        p American Spirit: Who’s Stephen?
        p
          | (Stub, Stub… Smash)
          br
          | American Spirit: Oh, my crap. That hurts. I was on fire, happy, joining with Sam, and then he just slammed me here. OMG. What a headache.
        p
          | (Stub, Stub, Stub… Grind, smash.)
          br
          | Kool: Ohhhhhh. Wheeeuuuu. That was crazy. Missy and I were enjoying the long ride down from the great feelings that Missy was feeling with Sam, and then Missy heard something, took a last drag and bam! I’m history.
        p
          | ——————— some time later ————
          br
          | American Spirit, Camel, Kool, Marlboro: Look another ash! Maybe news!
        p (Stub. Grind. Stub, stub, stub. Grind. … smash)
        hr
        p Like I say, I’m not ag’in smokers.  Nor vegetarians.  Ashtrays have more interesting conversations – prove me wrong.
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>
