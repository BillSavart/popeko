<template>
    <h3 class="counter">
        {{ counter }}
    </h3>
    <img :src="pekoImg" alt="Pekora image" width="400" heigth="500" @mousedown="peko" @mouseup="noPeko">
</template>

<script>
const pekoAudio = require('../assets/peko.mp3');

export default {
    data() {
        return { 
            pekoAudio,
            pekoImg: require('../assets/pekora.jpg'),
            counter: 0
        };
    },
    methods: {
        getAudio() {
            return this.pekoAudio;
        },
        peko() {
            this.pekoImg = require('../assets/pekoClicked.jpg');
            this.counter++;

            let audio = new Audio(this.pekoAudio);
            audio.addEventListener("canplaythrough", () => {
                audio.play();
            });
        },
        noPeko() {
            this.pekoImg = require('../assets/pekora.jpg');
        }
    }
}
</script>

<style>
    .counter {
        margin: 10px auto;
        font-size: 2em;
    }
</style>