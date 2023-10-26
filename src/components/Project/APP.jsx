import React, { useState, useEffect } from 'react';
import axios from "axios";
import { Link } from "react-router-dom";
import Tags from "../Page/Tags";

export default function APP() {
    const [project, setProject] = useState([]);
    const num_project = project.length;

    useEffect(() => {
        const fetchData = async () => {
            try {
                const response = await axios.get("https://oprahstudio-portfolio-react-backend.vercel.app/projects/app");
                setProject(response.data);
                response.send(response.data);
            } catch (error) {
                console.error(error.message);
            }
        }
        fetchData();
    }, []);

    return (
        <div>
            <div className="project mx-9 sm:px-10 mb-10 max-w-screen">
                <div className="text-right">
                    <p className="text-md opacity-30">Showing <span className='px-1'>1</span> - <span className='px-1'>{num_project}</span> of  <span className='px-1'>{num_project}</span> projects</p>
                </div>
                <div className="grid grid-cols-1 lg:grid-cols-2 lg:grid-cols-2 gap-5 mt-2">
                    {project.map((item) => (
                        <div id="project_type" class="mt-3 bg-white rounded-lg h-fit hover:drop-shadow-xl">
                            <div class="bar white bg-zinc-100 rounded-t-lg drop-shadow-md py-1 grayscale-[20%] h-[28px] grid grid-cols-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="55" height="8" viewBox="0 0 79 19" class="mt-2">
                                    <g id="Group_254" data-name="Group 254" transform="translate(-7185 -6176)">
                                        <circle id="Ellipse_94" data-name="Ellipse 94" cx="9.5" cy="9.5" r="9.5"
                                            transform="translate(7185 6176)" fill="#fd5737" />
                                        <circle id="Ellipse_95" data-name="Ellipse 95" cx="9.5" cy="9.5" r="9.5"
                                            transform="translate(7215 6176)" fill="#ffbc3c" />
                                        <circle id="Ellipse_96" data-name="Ellipse 96" cx="9.5" cy="9.5" r="9.5"
                                            transform="translate(7245 6176)" fill="#32c949" />
                                    </g>
                                </svg>
                                <small class="text-stone-800 py-[3px] uppercase">
                                    {item.category_name}
                                </small>
                            </div>
                            <div class="overflow-hidden">
                                <Link to={`/projects/${item.project_id}`}>
                                    <img src={`/images/project/${item.image}`} class="m-0 p-0 z-0 hover:scale-110 ease-in-out duration-150 hover:rounded-lg hover:drop-shadow-lg" alt="" />
                                </Link>
                            </div>
                            <div class="px-5 py-4">
                                <Link to={`/projects/${item.project_id}`} class="project-title text-3xl font-ed text-dusk-yellow">
                                    {item.name}
                                </Link>
                                <div class="grid grid-cols-6">
                                    <div className="tags mt-3 col-span-5 inline-flex">
                                        <Tags key={item.project_id} id={item.project_id} />
                                    </div>
                                    <div class="year mt-3 flex justify-end">
                                        <p class="text-dark-black text-md md:text-lg">
                                            {item.year}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ))}
                </div>
                <div className="mb-20" id="Pagination">
                    {/* {{ $viewData['projects']-> links() }} */}
                </div>
            </div>


        </div>
    )
}