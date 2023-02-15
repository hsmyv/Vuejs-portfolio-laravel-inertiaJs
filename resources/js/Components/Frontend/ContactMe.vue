<script setup>
import {ref} from 'vue';
import {useForm} from '@inertiajs/inertia-vue3';


const ShowMessage = ref(false);
const form = useForm({
    name: "",
    email:"",
    body: ""
});

function setShowMessage(value){
    ShowMessage.value = value;
}
function cleanForm(){
    form.reset();
    setShowMessage(true)
    setTimeout(()=> setShowMessage(false), 4000)
}
const submit = () => {
    form.post(route("contact"), {
        preserveScroll: true,
        onSuccess:() => cleanForm(),

    });
};
</script>
<template>
    <section id="contact" class="section   bg-white
      dark:bg-slate-900 py-32">
        <div class="container mx-auto" v-motion :initial="{
            opacity: 0,
            y: 100,
        }" :visible="{
    opacity: 1,
    y: 0,
}">
            <div class="flex flex-col items-center text-center py-8">
                <h2 class="text-slate-900
              dark:text-white text-3xl lg:text-4xl font-medium lg:font-extrabold mb-3">Contact Me</h2>
                <p class=" text-slate-900
              dark:text-white mb-4 ">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga veniam
                    labore nisium illum cupiditate reiciendis a numquam
                </p>
            </div>
            <div class="flex flex-col lg:flex-row lg:gap-x-8">
                <div class="
            flex flex-1 flex-col
            items-start
            space-y-8
            mb-12
            lg:mb-0 lg:pt-2
          ">
                    <div class="flex flex-col lg:flex-row gap-x-4">
                        <div class="
                text-accent
                rounded-sm
                w-14
                h-14
                flex
                items-start
                justify-center
                mt-2
                mb-4
                lg:mb-0
                text-2xl
              ">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                                stroke="currentColor" class=" text-slate-900
              dark:text-white w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" />
                            </svg>
                        </div>
                        <div>
                            <h4 class=" text-slate-900
              dark:text-white font-body text-xl mb-1">Have a question?</h4>
                            <P class=" text-slate-900
              dark:text-white mb-1 text-paragraph">I am here to help you.</P>
                            <p class=" text-slate-900
              dark:text-white  font-normal">Email me at hsmusayev@gmail.com</p>
                        </div>
                    </div>

                    <div class="flex flex-col lg:flex-row gap-x-4">
                        <div class="
                text-accent
                rounded-sm
                w-14
                h-14
                flex
                items-start
                justify-center
                mt-2
                mb-4
                lg:mb-0
                text-2xl
              ">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                                stroke="currentColor" class=" text-slate-900
              dark:text-white w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                            </svg>
                        </div>
                        <div>
                            <h4 class=" text-slate-900
              dark:text-white font-body text-xl mb-1">Current Location</h4>
                            <P class=" text-slate-900
              dark:text-white mb-1 text-paragraph">Baku, Azerbaijan.</P>
                            <p class=" text-slate-900
              dark:text-white text-accent font-normal">Serving clients worldwide.</p>
                        </div>
                    </div>
                </div>


<form @submit.prevent="submit" class="space-y-8 w-full max-w-md">
    <div v-if="ShowMessage" class="m-2 p-4 bg-slate-900 dark:bg-blue-700 text-white dark:text-white rounded-lg">
        Thank you for contacting me.
    </div>
    <div class="flex gap-8">
        <div class="mb-6 ">
            <input v-model="form.name" type="text" id="default-input"
                class="bg-gray-50 border border-gray-300 rounded-none text-gray-900 text-sm focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Name">

            <span v-if="form.errors.name" class="text-sm m-2 text-red-400">{{ form.errors.name }}</span>
        </div>
        <div class="mb-6">
            <input v-model="form.email" type="text" id="default-input"
                class="bg-gray-50 border border-gray-300 rounded-none text-gray-900 text-sm focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Email">

            <span v-if="form.errors.email" class="text-sm m-2 text-red-400">{{ form.errors.email }}</span>
        </div>
    </div>
    <textarea id="message" rows="4" v-model="form.body"
        class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
        placeholder="Write your thoughts here..."></textarea>
    <span v-if="form.errors.body" class="text-sm m-2 text-red-400">{{ form.errors.body }}</span>
    <button
        class="bg-slate-700 hover:bg-slate-900 dark:bg-blue-700 dark:hover:bg-blue-900 text-white font-bold py-2 px-4 rounded">
        Send Message
    </button>
</form>

            </div>
        </div>
    </section>
</template>
