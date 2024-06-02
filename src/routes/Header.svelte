<script>
</script>

<template lang="pug">
#header.grid
  d
    a.test(href='/')
      img.circle(style='-moz-transform:scaleX(-1);-o-transform:scaleX(-1);-webkit-transform:scaleX(-1);transform:scaleX(-1);filter:FlipH;-ms-filter:FlipH', src='https://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=120')
  d
    h1.center.vibrant-text King St. John's Jim
    h2.center.vibrant-text Factisms from Cascadia's Protector --- Both a Saint AND a King.
  a(href='/')
    img.circle(src='https://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=120')

</template>

<style>
  .center {
    text-align: center;
  }
  .vibrant-text {
    color: #fff;
    text-shadow: 1px 2px 3px #762;
  }
  #header {
    background: #eee;
    min-height: 30px;
    background: center 32% no-repeat url(/images/banner.jpg);
    padding: 1rem;
    place-items: center;
    grid-area: Header;
    grid-template-columns: 1fr 2fr 1fr;
    align-content: center;
    grid-auto-flow: column;
  }

  .circle {
    border-radius: 45%;
  }
</style>
