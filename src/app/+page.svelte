<script>
//app/app
</script>

<template lang="pug">
base(href='/')
meta(name='author', content='James A. Hinds: St. John\'s Jim -- King of Cascadia')
meta(http-equiv='Content-Type', content='text/html', charset='UTF-8')
meta(name='viewport', content='width=device-width,initial-scale=1')
title Dictates of the King of Cascadia and Stories from the 'Puter of St. John's Jim
meta(name='description', content='Stories from the \'Puter of St. John\'s Jim')
meta(name='keywords', content='Pier Park, Cathedral Park, fiction, North Portland,St. John\'s, st johns')
meta(property='fb:admins', content='187314157994069')
script document.styling = {"palx":"#03c","black":"#000","white":"#fff"}
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
link(rel='manifest', href='/assets/manifest.json')
meta(name='msapplication-TileColor', content='#ffffff')
meta(name='msapplication-TileImage', content='/assets/icons/ms-icon-144x144.png')
meta(name='theme-color', content='#ffffff')
link(rel='stylesheet', href='assets/css/vendor.css', -content--encoding='gzip')
link(rel='stylesheet', href='assets/css/app.css', -content--encoding='gzip')
style(media='print') .hidden-print { display: none !important; }
link(rel='shortcut icon', href='assets/icons/favicon.ico', type='image/x-icon')
link(rel='icon', href='assets/icons/favicon.ico', type='image/x-icon')
script(src='allstories.json')
script(src='mystories.json')
script(src='assets/js/vendor.js', -content--type='text/javascript', -content--encoding='gzip')
script(src='assets/js/app.js', -content--type='text/javascript', -content--encoding='gzip')
script siteHandle = 'stjohnsjim'; topDomain = 'stjohnsjim.com'; require('initialize');
#stjohnsjim-body
  #container.container-fluid
    #header.flex.flex-column.justify-between(style='min-height:320px; background:center 32% no-repeat url(assets/images/banner.jpg)')
      .flex.justify-around
        a.sm-hide.xs-hide.pt4.pl2.col-3.self-bottom(href='/')
          img.circle.right(style='-moz-transform:scaleX(-1);-o-transform:scaleX(-1);-webkit-transform:scaleX(-1);transform:scaleX(-1);filter:FlipH;-ms-filter:FlipH', src='https://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=120')
        .col-6.white(height='250px')
          h1.center King St. John's Jim
          h2.center Factisms from Cascadia's Protector --- Both a Saint AND a King.
        a.pt4.pr2.col-3(href='/')
          img.circle.left(src='https://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=120')
      .flex.align-bottom
        #header-inner.mr-auto.px2.pb2
          #main-nav
            a#main-nav-toggle.nav-icon
            a.main-nav-link(href='/')
        #sidecar.ml-auto.pr2.pb2
          .fb-login-button.bg-gray(width='180', data-width='33rem', data-max-rows='1', data-size='large', data-button-type='login_with', data-show-faces='true', data-auto-logout-link='true', data-use-continue-as='true')
          h5#fb-status.white
    #story.row
      .col.col-12.col-md-9.order-first
        slot:storybar
      .col.col-12.col-md-3
        aside#sidebar.hidden-print.col-3
    #footer.row
      .outer
        #footer-info.inner
          | © 2016 James A. Hinds
          br
          | Powered by
          a(href='https://github.com/jahbini/site-master', target='_blank') Site Master
</template>

<style>
</style>