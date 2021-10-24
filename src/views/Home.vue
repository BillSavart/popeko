<template>
  <div class="home">
    <PekoButton/>
  </div>
</template>

<script>
// @ is an alias to /src
import PekoButton from '../components/PekoButton.vue'

export default {
  name: 'Home',
  components: { PekoButton }
}
</script>

<style>
  body {
    background-image: url('../assets/pekora_bg.jpg');
    background-repeat: space;
    background-position: center center;
    background-attachment: fixed;
  }
</style>