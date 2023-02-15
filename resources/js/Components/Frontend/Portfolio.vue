<script setup>
import Projects from '@/Components/Frontend/Projects.vue';
defineProps({
    skills: Object,
    projects: Object,
});
</script>
<template>
    <section id="portfolio" class="section  bg-white
      dark:bg-slate-900 min-h-[1400px] py-16">
        <div class="container mx-auto" v-motion :initial="{
            opacity: 0,
            y: 100,
        }" :visible="{
    opacity: 1,
    y: 0,
}">
            <div class="space-y-4 flex flex-col items-center text-center">
                <h2 class="text-slate-900
              dark:text-white text-3xl lg:text-4xl font-medium lg:font-extrabold mb-3">My latest work</h2>
                <p class=" text-slate-900
              dark:text-white mb-8">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga veniam
                    labore nisium illum cupiditate reiciendis a numquam
                </p>
            </div>
        </div>
        <Projects :skills="skills" :projects="projects" />
    </section>
</template>
