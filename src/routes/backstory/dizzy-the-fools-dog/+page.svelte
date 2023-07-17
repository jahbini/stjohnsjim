<script>
//backstory/dizzy-the-fools-dog
import Card from '$lib/Card.svelte';
import storyMeta from './+page.json';
</script>

<template lang="pug">
Card(props='{storyMeta}')
    p Dizzy’s real name is Discernment of the Higher Good, and is an archetype, too. Dizzy is always there for the Fool, but most of what Dizzy says goes unnoticed.
    p Dizzy seldom talks, but rather dances his messages, and The Fool can’t figure that out. Hence the name Dizzy.
    p The movie "The Fifth Element" referred to the traditional four elements: Air, Earth, Fire, and Water. In western metaphysical tradition, these are approximately the same as Swords, Pentacles, Wands, and Cups. The fifth element of the movie: Love, is our "discernment."
footer.card-footer
  p.text-muted that's all--
</template>

<style>
</style>
