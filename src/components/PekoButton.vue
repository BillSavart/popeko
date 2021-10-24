<template>
    <div class="wrapper" @mousedown="peko" @mouseup="noPeko">
        <img src="../assets/poppeko.png" alt="poppeko">
        <h3 class="counter">
            {{ counter }}
        </h3>
        <img :src="pekoImg" alt="Pekora image" width="400" heigth="500">
    </div>
</template>

<script>
const pekoAudio = require('../assets/peko.mp3');

export default {
    data() {
        return { 
            pekoAudio,
            pekoImg: require('../assets/pekora.png'),
            counter: 0
        };
    },
    methods: {
        getAudio() {
            return this.pekoAudio;
        },
        peko() {
            this.pekoImg = require('../assets/peko.png');
            this.counter++;

            let audio = new Audio(this.pekoAudio);
            audio.addEventListener("canplaythrough", () => {
                audio.play();
            });
        },
        noPeko() {
            this.pekoImg = require('../assets/pekora.png');
        }
    }
}
</script>

<style>
    .counter {
        margin: 10px auto;
        font-size: 2em;
        user-select: none;
    }
    img {
        user-select: none;
    }
</style>