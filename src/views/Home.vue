<template>
  <div class="home">
    <img src="../assets/poppeko.png" alt="poppeko">
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
  }
</style>