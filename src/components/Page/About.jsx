import React from 'react';

export default function About() {
    return (
        <div className="mx-9 sm:px-10 mb-18" id="about">
            <div className="about animate__animated animate__fadeInDown animate__delay-1s">
                <h1 className="text-6xl sm:text-6xl font-ed pt-20 title">
                    About
                </h1>
            </div>
            <div className="content my-4">
                <div className="grid grid-cols-1 md:grid-cols-4">
                    <div className="text-lg py-8 col-span-3 col-start-2">
                        <div className="content md:w-10/12">
                            <p>I'm a freelance designer and developer working worldwide, based on Vancouver, Canada. <br /> I gratuated from the <span className="border-b border-b-black">Douglas College of Computer Studies and Information Science</span> to improve my skills in 2020.</p>
                            <br /><br />
                            <p>I focused on <span className="border-b border-b-black">minimalism</span> and easy-to-understand information as a web designer that I have designed for a variety of industries creating everything from branding to websites and apps for clients, and worked over <span className="border-b border-b-black">5 years experience as Web Designer, over 3 years as UI Visual Designer</span>. I always strive to create memorable experiences that are appealing, functional and distinctive. It's inspiring marketing websites, convincing e-commerce sites or apps that are truly beneficial to users.</p>
                        </div>

                        <p className="font-ny text-4xl mt-8">What Can I Do</p>
                        <div className="grid grid-cols-1 md:grid-cols-2 mt-6 opacity-50">
                            <p className="text-lg">#Web Design</p>
                            <p className="text-lg">#UI/UX Design</p>
                            <p className="text-lg">#Web Developer</p>
                            <p className="text-lg">#React Developer</p>
                            <p className="text-lg">#Laravel Developer</p>
                            <p className="text-lg">#PHP Developer</p>
                            <p className="text-lg">#Front-End Developer</p>
                            <p className="text-lg">#Graphic Design</p>
                            <p className="text-lg">#Visual Design</p>
                            <p className="text-lg">#Brand Identity</p>
                        </div>
                    </div>
                    <div className="text-left mt-4 col-start-2 col-span-3">
                        <a href="../pdf/OprahResume.pdf" target="_blank" className="button-link text-space-sm">
                            <i className="bi bi-arrow-right mr-3 left"></i>
                            <span className="animate-pulse">Review My Resume</span>
                            <i className="bi bi-arrow-right ml-3 right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div className="my-10 text-center">
                <div className="flex justify-center">
                    <img src="/images/icon_star-2.svg" alt="star" className="star mt-20 mb-12" width="70" />
                </div>
                <div className="grid justify-items-center py-5">
                    <p className="font-ny text-4xl leading-normal md:text-[50px] capitalize w-10/12">
                        To build the best experiences, I always think <span className="text-orange-red">outside the box</span> and <span
                            className="text-orange-red">face challenges</span> with passion and determination.
                    </p>
                </div>
            </div>
        </div>
    )
}