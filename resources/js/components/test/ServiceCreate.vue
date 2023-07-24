<template lang="">
    <div class="container">
        <h1>Service Create Page</h1>
        <input type="text" v-model="name">
        <input type="text" v-model="price">
        <input type="submit" value="Save" @click="save">
    </div>
</template>
<script>
import axios from 'axios';

export default {
    name: 'ServiceCreate',
    data() {
        return {
            name: '',
            price: ''
        }
    },
    methods: {
        save(){
            axios.post(`api/products`,{
                pname: this.name,
                pprice: this.price
            })
            .then((response)=>{
                this.$router.push('/service')
            })
        }
    },
}
</script>
<style lang="">
    
</style>