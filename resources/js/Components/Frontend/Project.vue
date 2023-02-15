<script setup>
import { Link } from "@inertiajs/inertia-vue3";
defineProps({
    project: Object,
});
</script>
<template>
    <Link :href="project.project_url" class="group flex flex-col items-center text-center cursor-pointer" v-motion
        :initial="{
            opacity: 0,
            y: 100,
        }" :enter="{
    opacity: 1,
    y: 0,
}">
    <div class="mb-6">
        <img class="rounded-2xl h-56" :src="project.image" :alt="project.name" />
    </div>
    <span class="
        text-slate-900
        dark:text-white
        capitalize
        text-accent text-sm
        mb-3
      ">{{ project.skill.name }}</span>
    <h3 class="
        text-slate-900
        hover:text-slate-700
         dark:text-white
        dark:hover:text-blue-900
        text-2xl
        font-semibold
        capitalize
        mb-3
      ">
        {{ project.name }}
    </h3>
    </Link>
</template>
