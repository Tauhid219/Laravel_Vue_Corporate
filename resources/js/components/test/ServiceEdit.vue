<template lang="">
    <div class="container">
        <h1>Edit Product</h1>
        <input type="text" v-model="name">
        <input type="text" v-model="price">
        <button @click="updateProducts">Update</button>
    </div>
</template>
<script>
import axios from 'axios';

export default {
    name: 'Edit',
    data() {
        return {
            name: '',
            price: '',
            id: ''
        }
    },
    methods: {
        getProducts() {
            axios.get(`http://localhost:8000/api/products/${this.id}`)
                .then((response) => {
                    this.name = response.data.data.name,
                        this.price = response.data.data.price
                })
        },
        updateProducts() {
            axios.put(`http://localhost:8000/api/products/${this.id}`, {
                pname: this.name,
                pprice: this.price
            })
                .then((response) => {
                    this.$router.push('/service')
                })
        }
    },
    mounted() {
        this.id = this.$route.params.id;
        this.getProducts();
    },
}
</script>
<style lang="">
    
</style>