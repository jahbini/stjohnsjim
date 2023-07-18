<script>
//error/404
import Card from '$lib/Card.svelte';
import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        | Sorry, that does not exist... Yet.
        a(href='/announcement/two-years-with-bamboo-snow.html')  but check out an incredible life with Bamboo Snow.
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>