import React, { useState, useEffect } from 'react';
import axios from "axios";
import { useParams } from 'react-router-dom';
import Tags from "../Page/Tags";

export default function ProjectDetail() {
    let { id } = useParams();
    const [project, setProject] = useState([]);
      
    useEffect(() => {
        const url = `https://oprahstudio-portfolio-react-backend.vercel.app/projects/${id}`;
        const fetchData = async () => {
            try {
                const response = await axios.get(url);
                setProject(response.data);
            } catch (error) {
                console.error(error.message);
            }
        }
        fetchData();
    }, [id]);

    return (
        <div id="project_type" className="rounded-lg h-fit">
            {project.map((item) => { 
                return (
                    <div key={item.project_id}>
                    <div className="project_details">
                        <div className="header md:h-fit bg-dark-black">
                            <div className="mx-8 pt-24 pb-8 md:pb-[40px] sm:px-10 max-w-screen">
                                <div className="text-start py-5">
                                    <a className="normal-link-left font-ny" href="/projects" rel="noopener noreferrer">
                                        <span className="ml-24 text-3xl text-dusk-yellow">View All Projects</span>
                                    </a>
                                </div>
                                <div className="grid grid-cols-1 md:grid-cols-4">
                                    <div className="deco mt-6">
                                        <img src="/images/icon_deco_star.svg" alt="" />
                                    </div>
                                    <div className="title col-span-3">
                                        <p className="text-lg md:text-xl text-light-begin mt-5 mb-3">
                                            {item.categroy}
                                        </p>
                                        <h1 className="text-5xl md:text-6xl font-ny text-light-begin">
                                            {item.name}
                                        </h1>
                                        <hr className="border-[#F5F0E5] my-10 md:my-12 w-11/12" />

                                        <div className="info my-4">
                                            <ul>
                                                <li className="grid grid-cols-1 sm:grid-cols-4 gap-1">
                                                    <div>
                                                        <p className="font-ny text-md uppercase text-light-begin sm:pb-5">Client</p>
                                                    </div>
                                                    <div className="col-span-3">
                                                        <p className="text-md text-light-begin pb-2 sm:pb-5">
                                                            {item.client}
                                                        </p>
                                                    </div>
                                                </li>
                                                <li className="grid grid-cols-1 sm:grid-cols-4 gap-1">
                                                    <div>
                                                        <p className="font-ny text-md uppercase text-light-begin sm:pb-5">Year</p>
                                                    </div>
                                                    <div className="col-span-3">
                                                        <p className="text-md text-light-begin pb-2 sm:pb-5">
                                                            {item.year}
                                                        </p>
                                                    </div>
                                                </li>
                                                <li className="grid grid-cols-1 sm:grid-cols-4 gap-1">
                                                    <div>
                                                        <p className="font-ny text-md uppercase text-light-begin sm:pb-5">Techs</p>
                                                    </div>
                                                    <div className="col-span-3 inline-flex">
                                                        <Tags key={item.project_id} id={item.project_id} />
                                                    </div>
                                                </li>
                                                <li className="grid grid-cols-1 sm:grid-cols-4 gap-1">
                                                    <div>
                                                        <p className="font-ny text-md uppercase text-light-begin sm:pb-5">Demo</p>
                                                    </div>
                                                    <div className="col-span-3">
                                                        <a href={item.link} className="text-md text-light-begin pb-2 sm:pb-5 hover:text-[#FD604E] focus:text-[#FD604E]">
                                                            {item.link}
                                                        </a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="content mx-8 mt-14 mb-12 sm:px-10 max-w-screen">
                            <div className="grid grid-cols-1 md:grid-cols-4 mb-7">
                                <div>
                                    <p className="font-ny text-lg uppercase text-dark-black pb-5 md:ml-3">Summary</p>
                                </div>
                                <div className="col-span-3 md:w-10/12">
                                    <p className="text-lg md:text-[20px] text-dark-black pb-5 leading-normal md:leading-9">
                                        {item.description}
                                    </p>
                                </div>
                            </div>

                            <div>
                                <img src={`/images/project/${item.image}`} className="py-6" alt="" />
                                {<img src={`/images/project/project${item.project_id}-1.jpg`} className="py-6" alt="" /> ? <img src={`/images/project/project${item.project_id}-1.jpg`} className="py-6" alt="" /> : <div></div>}
                                {<img src={`/images/project/project${item.project_id}-2.jpg`} className="py-6" alt="" /> ? <img src={`/images/project/project${item.project_id}-2.jpg`} className="py-6" alt="" /> : <div></div>}
                                {<img src={`/images/project/project${item.project_id}-3.jpg`} className="py-6" alt="" /> ? <img src={`/images/project/project${item.project_id}-3.jpg`} className="py-6" alt="" /> : <div></div>}
                            </div>

                            <div className="text-start pt-10">
                                <a className="normal-link-left-black font-ny" href="/projects" rel="noopener noreferrer">
                                    <span className="ml-24 text-3xl text-dusk-yellow">View All Projects</span>
                                </a>
                            </div>

                            <div className="text-center next mt-10">
                                <img src="/images/icon_star.svg" alt="star" className="inline-flex top-0 star mobile-hide" />
                                <br />
                                <hr className="border-[#26262D] my-10 md:my-12" />
                                <div className="grid justify-items-center">
                                    <p className="font-ny text-3xl md:text-[45px] py-5 capitalize md:w-10/12 leading-normal">
                                        I'm trying to stay with  current trends design and constantly challenge myself to learn more.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                )
            })}
        </div>
    )
}