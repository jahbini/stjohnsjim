<script>
//backstory/index
import Card from '$lib/Card.svelte';
import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>