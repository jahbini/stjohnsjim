<script>
  //pier-park-3gunas/index
  import Card from '$lib/Card.svelte';
  import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        p There is Tommy -- Tamasik in all its gory glory -- Bravado, Bragadocio, Bully and Bullpucky. Most of the chaos involves him. Mostly because he started it.
        p and Roger Dojer -- Rajasik and regular -- Takes care of all the details, has two fire extinguishers with him at all times.
        p and Southwick -- Sattvik wanna be -- learning to be what he needs to be to make a bridge between reality and heaven
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>
