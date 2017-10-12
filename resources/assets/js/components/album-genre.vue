<template>
    <div style="margin-top: 50px">
        <h2>Albums By genre</h2>
        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th>Genre</th>
                <th><a href @click.prevent="fetchData()">Count</a></th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="genre, index in genres">
                <th scope="row">{{ index + 1 }}</th>
                <td>{{genre.name}}</td>
                <td>{{genre.total_albums}}</td>
            </tr>

            </tbody>
        </table>

    </div>
</template>

<script>

    export default {

        data() {

            return {
                genres: '',
                desc: true
            }
        },


        mounted() {

            this.fetchData();
        },

        methods: {

            fetchData() {

                let order = this.desc ? 'desc' : 'asc';

                axios.get(`/genres/${order}`)
                        .then(response => {

                    this.genres = response.data;
            })
            .catch(error => {

                    console.log('fetch error');
            });

                this.desc = !this.desc;
            },
        }
    }

</script>