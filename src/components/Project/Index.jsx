import React from 'react';
import { Link, Outlet } from "react-router-dom";

export default function ProjectList() {
    const categories = ["all","website","graphic","app","other"];

    return (
        <div>
            <div className="project mx-9 pt-16 sm:px-10 mb-5 max-w-screen">
                <div className="project animate__animated animate__fadeInDown animate__delay-1s">
                    <h1 className="text-6xl sm:text-6xl font-ed pt-20 title">
                        Projects
                        <span className="words invisible sm:visible">Current projects</span>
                    </h1>
                </div>
                <div className="category mt-12 pt-5">
                    <p className="uppercase font-ny text-md">category</p>
                    <div className="mt-3">
                        <div className="uppercase mr-6 text-md md:text-xl inline-flex">
                            {categories.map((e) => (
                                <div><Link to={`/projects/${e}`} className="pr-6 hover:text-[#FD604E]">{e}</Link></div>
                            ))}
                        </div>
                    </div>
                </div>
            </div>

            <Outlet />

            <div className="mb-24 text-center sm:px-20 mx-9">
                <div className="flex justify-center">
                    <img src="/images/icon_star-2.svg" alt="star" className="star mt-20 mb-12" width="70" />
                </div>
                <p className="font-ny text-4xl leading-normal md:text-[50px] py-5 capitalize">
                    I pursue  <span className="text-orange-red">the best design</span> without compromise,
                    and create a colorful and innovative website keeping attention to details.
                </p>
            </div>
        </div>
    )
}