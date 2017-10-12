<template>
    <div class="section">
        <h2>Favourite Albums</h2>

        <h3><b>{{person.relationship}}</b></h3>
        <p>Favourite genre: {{person.fave.name}}</p>
        <p>Least favourite genre: {{person.least_fave.name}}</p>
        <p>Spent: £{{person.total_spend / 100}}</p>
        <form @submit.prevent="fetchData(selected)" style="margin-bottom: 100px">
            <select v-model="selected" class="form-control">
                <option disabled value="">Please select one</option>
                <option value="1">Mother</option>
                <option value="2">Father</option>
                <option value="3">Sister</option>
                <option value="4">Brother</option>
                <option value="5">Self</option>
            </select>
            <button class="btn btn-primary" type="submit" style="margin-top: 10px">Choose</button>
        </form>
    </div>
</template>

<script>

    export default {

        data() {

            return {
                person: {},
                selected: ''
            }
        },


        mounted() {

            this.fetchData(1);
        },


        methods: {

            fetchData(personId) {

                axios.get(`/people/${personId}/albums`)
                        .then(response => {

                            this.person = response.data;

                            console.log(this.person);
                        })
                        .catch(error => {

                            console.log('fetch error');
                        });

            },

            logit() {

                console.log(this.selected);
            }
        }
    }

</script>