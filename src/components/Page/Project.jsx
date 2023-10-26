import React from 'react';
// import axios from "axios";
// import Tags from "./Tags";
import { projectsList } from "../../data/data.js";

export default function About() {
    // const [loading, setLoading] = useState(true);
    // const [project, setProject] = useState([]);

    // useEffect(() => {
    //     const projects_url = "https://oprahstudio-portfolio-react-backend.vercel.app/projects/2022";

    //     const fetchData = async () => {
    //         setLoading(true);
    //         try {
    //             const res = await axios.get(projects_url);
    //             setProject(res.data);
    //         } catch (error) {
    //             console.error(error.message);
    //         }
    //         setLoading(false);
    //     }
    //     fetchData();
    // }, []);

    return (
        <div className="project mx-9 md:px-10 mb-20 relative">
            <div className="project animate__animated animate__fadeInDown animate__delay-1s">
                <h1 className="text-6xl sm:text-6xl font-ed pt-20 title">
                    Lastest Projects
                </h1>
            </div>
            <div>
                {(
                    <div className="grid grid-cols-1 lg:grid-cols-2 lg:grid-cols-2 gap-5 mt-20">
                        {projectsList.map((item) => (
                            <div id="project_type" className="mt-3 bg-white rounded-lg h-fit hover:drop-shadow-xl" key={item.project_id}>
                                <div className="bar white bg-zinc-100 rounded-t-lg drop-shadow-md py-1 grayscale-[20%] h-[28px] grid grid-cols-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="55" height="8" viewBox="0 0 79 19" className="mt-2">
                                        <g id="Group_254" data-name="Group 254" transform="translate(-7185 -6176)">
                                            <circle id="Ellipse_94" data-name="Ellipse 94" cx="9.5" cy="9.5" r="9.5"
                                                transform="translate(7185 6176)" fill="#fd5737" />
                                            <circle id="Ellipse_95" data-name="Ellipse 95" cx="9.5" cy="9.5" r="9.5"
                                                transform="translate(7215 6176)" fill="#ffbc3c" />
                                            <circle id="Ellipse_96" data-name="Ellipse 96" cx="9.5" cy="9.5" r="9.5"
                                                transform="translate(7245 6176)" fill="#32c949" />
                                        </g>
                                    </svg>
                                    <small className="text-stone-800 py-[3px] uppercase">
                                        {item.category}
                                    </small>
                                </div>
                                <div className="overflow-hidden">
                                        <img src={`/images/project/project${item.id}.jpg`} className="m-0 p-0 z-0 hover:scale-110 ease-in-out duration-150 hover:rounded-lg hover:drop-shadow-lg" alt="project images" />
                                </div>
                                <div className="px-5 py-4">
                                    <a href={`/projects/${item.project_id}`} className="project-title text-3xl font-ed text-dusk-yellow">
                                        {item.name}
                                    </a>
                                    <div className="grid grid-cols-6">
                                        <div className="tags mt-3 col-span-5 inline-flex opacity-40">
                                            {item.tags}
                                        </div>
                                        <div className="year mt-3 flex justify-end">
                                            <p className="text-dark-black text-md md:text-lg">
                                                {item.year}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        ))}
                    </div>
                )}
            </div>
            {/* <div className="mt-10 text-start md:text-center pb-12">
                <Link to="/projects" className="normal-link-right py-1 px-3 font-ny" rel="noopener noreferrer">
                    More Projects
                </Link>
            </div> */}
        </div>
    )
}