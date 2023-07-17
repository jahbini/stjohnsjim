<script>
//story/the-cougars-secret-identity
import Card from '$lib/Card.svelte';
import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        div
          div This Page may not exist: As they say on Saipan, "No Nawthing Thursday"
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>