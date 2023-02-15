<script setup>
import Project from "./Project.vue";
import { ref } from "vue";
const props = defineProps({
    skills: Object,
    projects: Object,
});

const filteredProjects = ref(props.projects.data);
const selectedSkill = ref("all");

const filterProjects = (id) => {
    if (id === "all") {
        filteredProjects.value = props.projects.data;
        selectedSkill.value = id;
    } else {
        filteredProjects.value = props.projects.data.filter((project) => {
            return project.skill.id === id;
        });
        selectedSkill.value = id;
    }
};
</script>
<template>
    <div class="container mx-auto py-8">
        <nav class="mb-12 border-b-2 border-light-tail-100 dark:text-dark-navy-100">
            <ul class="flex flex-col lg:flex-row justify-evenly items-center">
                <li class="cursor-pointer capitalize m-4">
                    <button @click="filterProjects('all')" class="
              flex
              text-center
              px-4
              py-2
               text-slate-900
              hover:text-white
               bg-slate-900
              hover:bg-slate-900
              dark:text-white
              dark:hover:bg-blue-900
              rounded-md
            " :class="[
              selectedSkill === 'all'
                ? 'bg-slate-900 text-white dark:bg-blue-900'
                : 'bg-white dark:bg-slate-900',
            ]">
                        All
                    </button>
                </li>
                <li class="cursor-pointer capitalize m-4" v-for="projectSkill in skills.data" :key="projectSkill.id">
                    <button @click="filterProjects(projectSkill.id)" class="
              flex
              text-center
              px-4
              py-2
              text-slate-900
              hover:text-white
               bg-slate-900
              hover:bg-slate-900
              dark:text-white
              dark:hover:bg-blue-900
              rounded-md
            " :class="[
                selectedSkill == projectSkill.id
                    ? 'bg-slate-900 text-white dark:bg-blue-900'
                    : 'bg-white dark:bg-slate-900',
            ]">
                        {{ projectSkill.name }}
                    </button>
                </li>
            </ul>
        </nav>
        <section class="grid gap-y-12 lg:grid-cols-3 lg:gap-8">
            <Project v-for="project in filteredProjects" :key="project.id" :project="project" />
        </section>
    </div>
</template>
