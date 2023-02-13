<template>

    <head title="New Project" />
    <BreezeAuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                New Project
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-md mx-auto sm:px-6 lg:px-8 bg-white">
                <form class="p-4" @submit.prevent="submit">
                    <div>
                        <BreezeLabel for="skill_id" value="Skills" />

                        <select v-model="form.skill_id" id="skill_id" name="skill_id" class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md">
                            <option v-for="skill in skills" :key="skill.id" :value="skill.id">{{ skill.name }}</option>
                        </select>
                        <InputError class="mt-2" :message="form.errors.skill_id"></InputError>
                    </div>
                    <div>
                        <BreezeLabel for="name" value="Name" />
                        <BreezeInput id="name" type="text" class="mt-1 block w-full" v-model="form.name"
                            autocomplete="name" />
                            <InputError class="mt-2" :message="form.errors.name"></InputError>
                    </div>
                    <div>
                        <BreezeLabel for="project_url" value="URL" />
                        <BreezeInput id="project_url" type="text" class="mt-1 block w-full" v-model="form.project_url"
                            autocomplete="project_url" />
                        <InputError class="mt-2" :message="form.errors.project_url"></InputError>

                    </div>
                    <div class="mt-2">
                        <BreezeLabel for="image" value="Image" />
                        <BreezeInput id="image" type="file" class="mt-1 block w-full"
                            @input="form.image = $event.target.files[0]" />
                    <InputError class="mt-2" :message="form.errors.image"></InputError>
                    </div>

                    <div class="flex items-center justify-end mt-4">
                        <BreezeButton class="ml-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                            Store
                        </BreezeButton>
                    </div>
                </form>
            </div>
        </div>
    </BreezeAuthenticatedLayout>
</template>

<script setup>
import BreezeAuthenticatedLayout from '@/Layouts/Authenticated.vue';
import { Head, Link, useForm } from '@inertiajs/inertia-vue3';
import BreezeButton from '@/Components/Button.vue';
import BreezeInput from '@/Components/Input.vue';
import BreezeLabel from '@/Components/Label.vue';
import InputError from '@/Components/InputError.vue';

defineProps({
    skills:Array
});
const form = useForm({
    name: '',
    image: null,
    skill_id: "",
    project_url:""
});

const submit = () => {
    form.post(route('projects.store'));
};
</script>
