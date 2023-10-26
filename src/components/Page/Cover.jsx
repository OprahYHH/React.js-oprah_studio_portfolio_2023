import React from 'react';
import { Link } from "react-router-dom";

export default function Cover() {
    return (
        <div className="cover">
            <div className="px-[5%] border-b border-[#26262D] h-5/6 md:h-screen flex items-stretch">
                <div className="content mx-9 sm:px-10 mt-[35px] self-center font-ny">
                    <span className="text-lg font-ny">Hi, I'm </span><br />
                        <p className="py-1 sm:py-2">
                            <span className="text-6xl sm:text-7xl md:text-[60pt]">Oprah</span>
                            <span className="text-lg font-ny mx-5 mobile-hide">I'm passionate about everything.</span>
                        </p>
                        <p className="py-1 sm:py-2">
                            <span className="text-6xl sm:text-7xl md:text-[60pt] mobile-hide">A Passionate </span>
                            <span className="text-orange-red text-6xl sm:text-7xl md:text-[60pt]">Designer</span>
                            <img src="/images/icon_star.svg" alt="star" className="inline-flex top-0 star mobile-hide" />
                        </p>
                        <p className="py-1 sm:py-2">
                            <span className="text-6xl sm:text-7xl md:text-[60pt]">&</span>
                            <span className="text-orange-red text-6xl sm:text-7xl md:text-[60pt]">Web Developer</span>
                        </p>
                        <p className="text-lg font-ny mt-5">
                            I believe that the best websites are built with both form and function mind.<br />
                                I face up to challenges, I do not accept limitation.
                        </p>
                </div>
                <div className="btn-project flex items-stretch mb-28 mobile-hide">
                    <Link to="/" className="circle rounded-full h-[150px] w-[150px] self-end bg-white text-dark-black border border-[#26262D]">
                        <span className="uppercase font-ny text-[16pt] text-center flex justify-center py-10 hover:text-white">view my<br />projects</span>
                    </Link>
                </div>
            </div>
        </div>
    )
}