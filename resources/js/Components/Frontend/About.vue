<script setup>
</script>
<template>
    <section id="about" class=" lg:h-[85vh]
      flex
      items-center
      bg-white
      dark:bg-slate-900
      py-32
      lg:py-0
      overflow-hidden
    ">
        <div class="container mx-auto" v-motion :initial="{
            opacity: 0,
            y: 100,
        }" :visible="{
    opacity: 1,
    y: 0,
}">
            <div class="flex flex-col xl:flex-row gap-24">
                <img style="box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;" class="object-cover h-full w-[566px] md:mx-auto lg:mx-0 rounded-2xl"
                    src="https://images.unsplash.com/photo-1467232004584-a241de8bcf5d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80" alt="about" />
                <div class="
            flex flex-col
            items-center
            text-center
            lg:items-start lg:text-left
          ">
                    <div class="flex flex-col">
                        <h2 class=" text-slate-900
              dark:text-white text-3xl lg:text-4xl font-medium lg:font-extrabold mb-3">
                            About Me
                        </h2>
                        <P class=" text-slate-900
              dark:text-white mb-4 ">Freelance frontend Web developer</P>
                        <hr class="mb-8 opacity-90 dark:opacity-5" />
                        <p class=" text-slate-900
              dark:text-white mb-8">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit tempore
                            earum dolorum quo consequatur rem nihil hic ducimus rerum soluta
                            neque harum velit molestiae dignissimos distinctio dolorum nisi
                            labore culpa nihil. <br />
                            <br />
                            Qui doloremque quod sit accusantium unde totam inventore
                            cupiditate ratione esse maxime eum recusandae ducimus.
                        </p>
                    </div>
                    <a href="#contact" class="
                     btn btn-md bg-accent  inline-flex
              items-center
              justify-center
              rounded-md
              border border-transparent
              bg-slate-900
              dark:bg-blue-600
              px-5
              py-3
              text-base
              font-medium
              text-white
              dark:text-white
              hover:bg-slate-700
              dark:hover:bg-blue-700">
                        Contact me
                    </a>
                </div>
            </div>
        </div>
    </section>
</template>
