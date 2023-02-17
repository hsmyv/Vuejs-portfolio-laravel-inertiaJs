<script setup>
</script>
<template>
    <section id="home" class="
      lg:h-[85vh]
      flex
      items-center
      bg-white
      dark:bg-slate-900
      py-32
      lg:py-0
      overflow-hidden
    ">
        <div class="container mx-auto h-full" v-motion :initial="{
            opacity: 0,
            y: 100,
        }" :visible="{
    opacity: 1,
    y: 0,
}">
            <div class="flex flex-col md:flex-row items-center h-full pt-8">
                <div class="flex-1 flex flex-col items-center lg:items-start">
                    <!-- <p class="text-slate-900
              dark:text-white text-lg text-accent text-md mb-[22px]">Hey, I'm Tony! 👋</p> -->
                    <h1 class="
              text-4xl
              leading-[44px]
              md:text-5xl md:leading-tight
              lg:text-7xl lg:leading-[1.2]
              font-bold
              text-slate-900
              dark:text-white
              md:tracking-[-2px]
            ">
                        I Build & Design <br />
                        Web Interfaces.
                    </h1>
                    <p class="
              pt-4
              pb-8
              md:pt-6 md:pb-12
              max-w-[480px]
              text-slate-900
              dark:text-white
              text-lg text-center
              lg:text-left
            ">
                        Hello! Thank you for visiting my website. I am excited to share my skills, experience, and education with you.
                    </p>
                    <a href="#contact"
                        class="text-blue-700 hover:text-white border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2 dark:border-white dark:hover:border-blue-700 dark:text-white dark:hover:text-blue-700 dark:hover:bg-slate-900 dark:focus:ring-blue-800">Work with me</a>
                    <div class="pt-12">
                        <h5 class="
                text-lg
                flex
                justify-center
                lg:justify-start
                items-center
                text-slate-900
              dark:text-white
                mb-2
              ">
                            Follow me on
                        </h5>
                        <div class="flex items-center mb-6">
                            <a class="
                  w-12
                  h-12
                  rounded-full
                  flex
                  items-center
                  justify-center
                  border border-slate-900
                  hover:border-blue-700
                  text-slate-900
                  hover:text-blue-700
                  hover:bg-white
                  dark:text-white
                  dark:hover:text-blue-700
                  dark:hover:bg-slate-900
                  dark:border-white
                  dark:hover:border-blue-700
                  mr-3
                  sm:mr-4
                " href="https://facebook.com/hesen.musaa">
                                <svg width="8" height="16" viewBox="0 0 8 16" class="fill-current">
                                    <path
                                        d="M7.43902 6.4H6.19918H5.75639V5.88387V4.28387V3.76774H6.19918H7.12906C7.3726 3.76774 7.57186 3.56129 7.57186 3.25161V0.516129C7.57186 0.232258 7.39474 0 7.12906 0H5.51285C3.76379 0 2.54609 1.44516 2.54609 3.5871V5.83226V6.34839H2.10329H0.597778C0.287819 6.34839 0 6.63226 0 7.04516V8.90323C0 9.26452 0.243539 9.6 0.597778 9.6H2.05902H2.50181V10.1161V15.3032C2.50181 15.6645 2.74535 16 3.09959 16H5.18075C5.31359 16 5.42429 15.9226 5.51285 15.8194C5.60141 15.7161 5.66783 15.5355 5.66783 15.3806V10.1419V9.62581H6.13276H7.12906C7.41688 9.62581 7.63828 9.41935 7.68256 9.10968V9.08387V9.05806L7.99252 7.27742C8.01466 7.09677 7.99252 6.89032 7.85968 6.68387C7.8154 6.55484 7.61614 6.42581 7.43902 6.4Z" />
                                </svg>
                            </a>
                            <a class="
                  w-12
                  h-12
                  rounded-full
                  flex
                  items-center
                  justify-center
                   border border-slate-900
                  hover:border-blue-700
                  text-slate-900
                  hover:text-blue-700
                  hover:bg-white
                  dark:text-white
                  dark:hover:text-blue-700
                  dark:hover:bg-slate-900
                  dark:border-white
                  dark:hover:border-blue-700
                  mr-3
                  sm:mr-4
                " href="https://instagram.com/hsmyv">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
      <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
    </svg>
                            </a>


                            <a class="
                  w-12
                  h-12
                  rounded-full
                  flex
                  items-center
                  justify-center
                  border border-slate-900
                  hover:border-blue-700
                  text-slate-900
                  hover:text-blue-700
                  hover:bg-white
                  dark:text-white
                  dark:hover:text-blue-700
                  dark:hover:bg-slate-900
                  dark:border-white
                  dark:hover:border-blue-700
                  mr-3
                  sm:mr-4
                " href="https://youtube.com/@hsmyv">
                                <svg width="16" height="12" viewBox="0 0 16 12" class="fill-current">
                                    <path
                                        d="M15.6645 1.88018C15.4839 1.13364 14.9419 0.552995 14.2452 0.359447C13.0065 6.59222e-08 8 0 8 0C8 0 2.99355 6.59222e-08 1.75484 0.359447C1.05806 0.552995 0.516129 1.13364 0.335484 1.88018C0 3.23502 0 6 0 6C0 6 0 8.79263 0.335484 10.1198C0.516129 10.8664 1.05806 11.447 1.75484 11.6406C2.99355 12 8 12 8 12C8 12 13.0065 12 14.2452 11.6406C14.9419 11.447 15.4839 10.8664 15.6645 10.1198C16 8.79263 16 6 16 6C16 6 16 3.23502 15.6645 1.88018ZM6.4 8.57143V3.42857L10.5548 6L6.4 8.57143Z" />
                                </svg>
                            </a>
                            <a class="
                  w-12
                  h-12
                  rounded-full
                  flex

                  items-center
                  justify-center
                   border border-slate-900
                  hover:border-blue-700
                  text-slate-900
                  hover:text-blue-700
                  hover:bg-white
                  dark:text-white
                  dark:hover:text-blue-700
                  dark:hover:bg-slate-900
                  dark:border-white
                  dark:hover:border-blue-700
                  mr-3
                  sm:mr-4
                " href="https://linkedin.com/in/hasan-musayev-a54828183">
                                <svg width="14" height="14" viewBox="0 0 14 14" class="fill-current">
                                    <path
                                        d="M13.0214 0H1.02084C0.453707 0 0 0.451613 0 1.01613V12.9839C0 13.5258 0.453707 14 1.02084 14H12.976C13.5432 14 13.9969 13.5484 13.9969 12.9839V0.993548C14.0422 0.451613 13.5885 0 13.0214 0ZM4.15142 11.9H2.08705V5.23871H4.15142V11.9ZM3.10789 4.3129C2.42733 4.3129 1.90557 3.77097 1.90557 3.11613C1.90557 2.46129 2.45002 1.91935 3.10789 1.91935C3.76577 1.91935 4.31022 2.46129 4.31022 3.11613C4.31022 3.77097 3.81114 4.3129 3.10789 4.3129ZM11.9779 11.9H9.9135V8.67097C9.9135 7.90323 9.89082 6.8871 8.82461 6.8871C7.73571 6.8871 7.57691 7.74516 7.57691 8.60323V11.9H5.51254V5.23871H7.53154V6.16452H7.55423C7.84914 5.62258 8.50701 5.08065 9.52785 5.08065C11.6376 5.08065 12.0232 6.43548 12.0232 8.2871V11.9H11.9779Z" />
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="flex flex-1 justify-end items-center h-full mt-8 md:mt-0">
                    <img class="rounded-lg" style="box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;" src="https://images.unsplash.com/photo-1467232004584-a241de8bcf5d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80" alt="Hero" />
                </div>
            </div>
        </div>
    </section>
</template>
