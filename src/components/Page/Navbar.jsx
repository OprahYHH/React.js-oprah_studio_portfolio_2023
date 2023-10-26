import React from 'react';
import { Link, Outlet } from "react-router-dom";

export default function Navbar() {

    function openNav() {
        document.getElementById("myNav").style.width = "100%";
    }
    function closeNav() {
        document.getElementById("myNav").style.width = "0%";
    }

    return (
        <div className='mx-auto h-full'>
            <nav
                className="fixed w-screen py-3.5 border-b dark:bg-gray-900 border-b-[#26262D] bg-light-beign animate__animated animate__fadeInDown">
                <div className="mx-9 sm:px-10 flex justify-between items-center mx-auto">
                    <div className="flex justify-start">
                        <a href="/" className="flex items-center">
                            <img src="/images/icon_logo.svg" className="mr-3 h-9 sm:h-15 logo w-[20px]" alt="Logo" />
                            <span
                                className="self-center text-xl sm:text-2xl font-medium whitespace-nowrap font-ed">Oprah
                                Studio</span>
                        </a>
                        <p className="font-ny text-xs mx-5 my-3 text-space-sm highlight">DESIGNER & DEVELOPER</p>
                    </div>
                    <div className="text-left">
                    </div>
                    <div className="flex items-center md:order-1">
                        <a data-collapse-toggle="menu-select" type="button" id="button-menu" href='#/'
                            className="inline-flex items-center px-2 py-1 ml-1 text-sm focus:outline-none focus:ring-1 focus:ring-[#26262D] dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600 btnLeft:focus focus:opacity-10 hover:opacity-50"
                            aria-controls="menu-select" aria-expanded="false" onClick={openNav}>
                            <span className="sr-only">Open main menu</span>
                            <i className="bi bi-list text-2xl"></i>
                        </a>
                    </div>
                </div>
            </nav>

            <div className="bg-dark-blackopacity-90 text-white text-center overlay z-9" id="myNav">
                <button href="#" className="closebtn" onClick={closeNav}><i className="bi bi-x-lg text-lg"></i></button>
                <ul className="overlay-content text-center">
                    <li>
                        <Link to="/" className="inline-flex" rel="noreferrer" onClick={closeNav}>
                            <span className="number">01</span>
                            <span className="options font-[180px]">Home</span>
                        </Link>
                    </li>
                    <li>
                        <Link to="/" className="inline-flex" rel="noreferrer" onClick={closeNav}>
                            <span className="number">02</span>
                            <span className="options font-[180px]">About</span>
                        </Link>
                    </li>
                    <li>
                        <Link to="/" className="inline-flex" rel="noreferrer" onClick={closeNav}>
                            <span className="number">03</span>
                            <span className="options font-[180px]">Projects</span>
                        </Link>
                    </li>
                    <li>
                        <a href="https://www.linkedin.com/in/oprah/" target="_blank" rel="noreferrer" className="inline-flex" onClick={closeNav}>
                            <span className="number">04</span>
                            <span className="options font-[180px]">Contact</span>
                        </a>
                    </li>
                </ul>

                <Outlet />
            </div>
        </div>
    );
}