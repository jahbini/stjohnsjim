<script>
  //tarot/the-king-of-pentacles
  import Card from '$lib/Card.svelte';
  import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        p A king of pentacles is an entrepreneur, a small business owner. Anyone that has mastered the several ways that earn money and may choose to be employer, tradesman, artisan, merchant, industrialist.
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>
