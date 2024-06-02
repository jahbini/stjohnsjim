<script>
  export let props = { no: 'no' };
</script>

<template lang="pug">
article
  .card-header
    h2.card-title {props.fields.title}
    +if('props.fields.headlines.length >0')
      h4 {props.fields.headlines[0]}
      +else()
        .card-subtitle.text-muted --- .
  .card-body
    .m1.bg-darken-1
      #bloviation.article-entry.contents(dangerously-set-inner-h-t-m-l='[object Object]')
        slot
</template>

<style>
  h2 {
    margin-bottom: 2px;
  }
  h4 {
    margin-left: 4em;
  }
  article {
    margin: 1em;
    padding: 2em;
    background: rgba(100, 100, 100, 0.4);
  }
</style>
