<script>
  export const identifier = 'aside';
  let stories = (import.meta.glob('/src/routes/**/+page.svx', { eager: true, import: 'metadata' }));
  import _ from 'underscore';
  let myStories = _.map(stories, (value, key) => {
    let result = value.fields || value;
    result.location = key.slice(12, key.length - 10);
    return result;
  });
  myStories = _.groupBy(myStories, 'category');
  delete myStories['-'];
  debugger;
  myStories = _.toArray(myStories);
</script>

<div class="aside">
  {#each myStories as category, indexx}
    <details role="list">
      <summary aria-haspopup="listbox">{myStories[indexx][0].category}</summary>
      <ul role="listbox">
        {#each myStories[indexx] as story}
          <li><a href="{story.category}/{story.slug}">{story.title}</a></li>
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
