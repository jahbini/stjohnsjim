<script>
  //backstory/random-quotes
  import Card from '$lib/Card.svelte';
  import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        p (Tommy’s morphable truths number 2533 – Saying is not the same as doing. Do what ever you damn well need. Say what they need to hear.) (Roger’s rulebook number 2533 – I got no dog in that fight. I do what I do, you do what you do.)(Southwick’s reading on the entrails of the roadkill squirrel – Gifts of nature overpower mere conventions.)(Unibrow’s unwritten laws #1 – I know some people who are into that. Not me, I’m clean though. Lemme know what you want.)(Concensus Sally’s obliques’ #22 "Good Job! Thanks for sharing, are we ready for a vote?")
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>
