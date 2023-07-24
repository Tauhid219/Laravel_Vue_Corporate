<template lang="">
    <div class="container">
        <h1>Product List</h1>
        <table border="1">
            <tr>
                <th>SL</th>
                <th>Name</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            <tr v-for="(p, i) in product" :key="i">
                <td>{{ ++i }}</td>
                <td>{{ p.name }}</td>
                <td>{{ p.price }}</td>
                <td>
                    <router-link :to="`serviceedit/${p.id}`">Edit</router-link> &nbsp;
                    <a href="javascript:void(0)" @click="deleteProduct(p.id)">Delete</a>
                </td>
            </tr>
        </table><br>
        <div>
            <button><router-link to="/servicecreate">Add New</router-link></button>
        </div>
    </div>
</template>
<script>
import axios from 'axios';

export default {
    name: 'Service',
    data() {
        return {
            product: []
        }
    },
    methods: {
        getProducts() {
            axios.get('api/products')
                .then((response) => {
                    this.product = response.data.data
                })
        },
        deleteProduct(id) {
            axios.delete(`http://localhost:8000/api/products/${id}`)
                .then((response) => {
                    console.log(response.data)
                    this.getProducts()
                })
        }
    },
    mounted() {
        this.getProducts()
    }
}
</script>
<style lang="">
    
</style>