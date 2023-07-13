<script>
// src/routes/+layout.svelte
let styling = {"palx":"#03c","black":"#000","white":"#fff"}
import allStories from './allstories.json';
import stories from './mystories.json?raw';
const siteHandle = 'stjohnsjim';
const topDomain = 'stjohnsjim.com';
import Header from './Header.svelte'
import Footer from './Footer.svelte'
import Aside from './Aside.svelte'
</script>

<template lang="pug">
svelte:head
  base(href='/')
  meta(name='author', content='James A. Hinds: St. John\'s Jim -- King of Cascadia')
  meta(http-equiv='Content-Type', content='text/html', charset='UTF-8')
  meta(name='viewport', content='width=device-width,initial-scale=1')
  title Dictates of the King of Cascadia and Stories from the 'Puter of St. John's Jim
  meta(name='description', content='Stories from the \'Puter of St. John\'s Jim')
  meta(name='keywords', content='Pier Park, Cathedral Park, fiction, North Portland,St. John\'s, st johns')
  meta(property='fb:admins', content='187314157994069')
  link(rel='apple-touch-icon', sizes='57x57', href='/assets/icons/apple-icon-57x57.png')
  link(rel='apple-touch-icon', sizes='60x60', href='/assets/icons/apple-icon-60x60.png')
  link(rel='apple-touch-icon', sizes='72x72', href='/assets/icons/apple-icon-72x72.png')
  link(rel='apple-touch-icon', sizes='76x76', href='/assets/icons/apple-icon-76x76.png')
  link(rel='apple-touch-icon', sizes='114x114', href='/assets/icons/apple-icon-114x114.png')
  link(rel='apple-touch-icon', sizes='120x120', href='/assets/icons/apple-icon-120x120.png')
  link(rel='apple-touch-icon', sizes='144x144', href='/assets/icons/apple-icon-144x144.png')
  link(rel='apple-touch-icon', sizes='152x152', href='/assets/icons/apple-icon-152x152.png')
  link(rel='apple-touch-icon', sizes='180x180', href='/assets/icons/apple-icon-180x180.png')
  link(rel='icon', type='image/png', sizes='192x192', href='/assets/icons/android-icon-192x192.png')
  link(rel='icon', type='image/png', sizes='32x32', href='/assets/icons/favicon-32x32.png')
  link(rel='icon', type='image/png', sizes='96x96', href='/assets/icons/favicon-96x96.png')
  link(rel='icon', type='image/png', sizes='16x16', href='/assets/icons/favicon-16x16.png')
  meta(name='msapplication-TileColor', content='#ffffff')
  meta(name='msapplication-TileImage', content='/assets/icons/ms-icon-144x144.png')
  meta(name='theme-color', content='#ffffff')
  link(rel='shortcut icon', href='assets/icons/favicon.ico', type='image/x-icon')
  link(rel='icon', href='assets/icons/favicon.ico', type='image/x-icon')

#stjohnsjim-body
  div.sitecontainer
    Header
    div.site
      div.mainly
        slot
        slot:storybar
      Aside({stories}) 
    Footer
</template>

<style>
  @import "@picocss/pico";
  .sitecontainer {
    padding: 0.1in;
    display: flex;
    flex-direction: column;
    height: auto;
    width: 100vw;
  }
  .mainly {
    grid-area: Main;
    padding: 0 2em 0 0;
  }
  .site {
    display: grid;
    gap: 5em 0em;
    grid-template-columns: 1fr 5fr 2fr;
    grid-template-areas: "None Main Aside";
    min-height: 100vh;
  }
</style>
