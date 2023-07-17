<script>
//announcement/new-look
import Card from '$lib/Card.svelte';
import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        h2 wowzers!
        p.circle.border
          | I'm writing this new article without a wysiwig editor: I'm going primitive! Everything is now in
          span.px1.fa.fa-coffee Coffeescript.
        p It's kind of like building my own printing press out of electrons and software. The big hope is that with the fine control over each pixel on your screen will make me become a Grok-star.
        aside.border.rounded.bg-silver.h4.no-column-break
          pre.h6.
            T.p ".circle.border", ->
               T.raw """
            I'm writing this new article without a wysiwig editor: I'm going primitive!
            Everything is now in
            """
               T.span ".px1.fa.fa-coffee", " Coffeescript."
          p I promise that's the last of Coffeescript you will see on these pages -Otherwise, lets keep it a secret.
        .siteInvitation
        p Actually, I do hope to revitalize these stories with new looks to introduce the intertwined nature of the stories: How the Daough sisters contrast with the Yucks over in Tommy, OR. Read on!
        aside Baby Steps
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>