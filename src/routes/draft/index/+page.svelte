<script>
//draft/index
import Card from '$lib/Card.svelte';
import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        p Ms. Stitt gave these an ‘F’
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>