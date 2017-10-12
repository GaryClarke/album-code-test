<template>
    <div style="margin-top: 50px">
        <h2>Albums By Year</h2>
        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th><a href @click.prevent="fetchData('year')">Year</a></th>
                <th><a href @click.prevent="fetchData('spend')">Spend</a></th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="year, index in years">
                <th scope="row">{{ index + 1 }}</th>
                <td>{{year.year}}</td>
                <td>£{{year.spend / 100 }}</td>
            </tr>

            </tbody>
        </table>

    </div>
</template>

<script>

    export default {

        data() {

            return {
                years: ''
            }
        },


        mounted() {

            this.fetchData('year');
        },

        methods: {

            fetchData(order) {

                axios.get(`/albums/${order}`)
                        .then(response => {

                            this.years = response.data;
                        })
                        .catch(error => {

                            console.log('fetch error');
                        });
            },
        }
    }

</script>