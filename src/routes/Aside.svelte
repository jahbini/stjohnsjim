<script>
  export const identifier = 'aside';
  let stories = import.meta.glob('/src/routes/**/+page.json', { eager: true, import: 'fields' });
  import _ from 'underscore';
  _.map(stories, (value, key) => {
    value.location = key.slice(12, key.length - 11);
    return value;
  });
  stories = _.groupBy(stories, 'category');
  delete stories['-'];
  stories = _.toArray(stories);
</script>

<div class="aside">
  {#each stories as category, indexx}
    <details role="list">
      <summary aria-haspopup="listbox">{stories[indexx][0].category}</summary>
      <ul role="listbox">
        {#each stories[indexx] as story}
          <li><a href="{story.category}/{story.slug}.html">{story.title}</a></li>
        {/each}
        <ul />
      </ul>
    </details>
  {/each}
  <template lang="pug">
  button
    a(href="mailto:gimobeamo@spacestruts.com?subject=I want to know more&") Contact Us
  </template>
</div>

<style>
  a {
    color: black;
  }

  .aside {
    border-radius: 4px;
    padding: 1rem;
    grid-area: Aside;
    background: rgb(245, 245, 220, 0.35);
  }
</style>
