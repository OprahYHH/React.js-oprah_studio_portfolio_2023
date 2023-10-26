import React from 'react';

export default function Contact() {
    return (
        <div className="bg-dark-black contact_dark">
            <div className="mx-9 pb-6 sm:px-10 pt-10">
                <div className="contact animate__animated animate__fadeInDown animate__delay-1s">
                    <h1 className="text-6xl sm:text-6xl font-ed pt-20 title text-light-begin">
                        Let's Chat
                        <span className="words invisible sm:visible text-light-begin">Contact Me</span>
                    </h1>
                </div>
                <div className="content mt-4 mb-24 grid grid-cols-1 md:grid-cols-4">
                    <p className="text-lg pt-8 col-start-2 col-span-3 text-light-begin">
                        Got a project in mind? 
                        <a className="animated-link py-1 px-3 ml-2" href="mailto:oprahca19@email.com"
                            rel="noopener noreferrer">Email me</a>
                    </p>
                    
                    <p className="text-lg pb-8 col-start-2 col-span-3 text-light-begin">
                        Want to know more about my experiences, view by 
                        <a href="https://www.linkedin.com/in/oprah/" target="_blank"  rel="noopener noreferrer"
                            className="animated-link py-1 px-3 ml-2">LinkedIn</a>
                    </p>

                    <div className="col-start-2 col-span-3">
                        <a href="https://www.linkedin.com/in/oprah/" target="_blank"  rel="noopener noreferrer"
                            className="button-link text-space-sm">
                            <i className="bi bi-arrow-right mr-3 left"></i>
                            <span className="text-dark-black">GETTING IN TOUCH</span>
                            <i className="bi bi-arrow-right ml-3 right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    )
}
