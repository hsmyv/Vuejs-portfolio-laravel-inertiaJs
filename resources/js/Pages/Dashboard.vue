<script setup>
import BreezeAuthenticatedLayout from '@/Layouts/Authenticated.vue';
import { Head, useForm } from '@inertiajs/inertia-vue3';
import BreezeButton from '@/Components/Button.vue';
import BreezeInput from '@/Components/Input.vue';
import BreezeLabel from '@/Components/Label.vue';
import InputError from '@/Components/InputError.vue';

const form = useForm({
    cv: null
});

const submit = () => {
    form.post(route('upload.cv'));
};
</script>

<template>
    <Head title="Dashboard" />

    <BreezeAuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Dashboard
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        You're logged in!
                    </div>
                    <div class="p-6 bg-white border-b border-gray-200">
                         <div class="py-12">
                <div class="max-w-md mx-auto sm:px-6 lg:px-8 bg-white">
                        <form @submit.prevent="submit">
                            <div class="mt-2">
                                 <BreezeLabel for="cv" value="Cv" v-model="form.cv" />
                            <BreezeInput id="cv" type="file" class="mt-1 block w-full"
                            @input="form.cv = $event.target.files[0]"/>
                            </div>
                            <div class="flex items-center justify-end mt-4">
                            <BreezeButton class="ml-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                                Store
                            </BreezeButton>
                        </div>
                        </form>
                </div>
                         </div>
                    </div>
                </div>
            </div>
        </div>
    </BreezeAuthenticatedLayout>
</template>

