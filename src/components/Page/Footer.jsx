import React from 'react';

export default function Footer() {
    return (
        <footer className="bg-dark-black text-light-begin border-t border-t-[#5B5B5B]">
            <div className="mx-9 grid grid-cols-1 md:grid-cols-2 px-3 sm:px-10 pt-5 pb-4 bottom-0">
                <div className="py-1 text-center md:text-start">
                    <p className="text-sm">
                        Oprah Studio &copy; {new Date().getFullYear()} — All rights reserved.
                    </p>
                </div>
                <div className="py-1 text-center md:text-end">
                    <div className="mb-8 md:mb-2 text-sm">
                        <a href="mailto:oprahca19@email.com" className="mx-2 hover:opacity-30" target="_blank" rel="noreferrer"><i className="bi bi-envelope"></i></a>
                        <a href="https://www.linkedin.com/in/oprah/" className="mx-2 hover:opacity-30" target="_blank" rel="noreferrer"><i className="bi bi-linkedin"></i></a>
                        <a href="https://github.com/oprahca" className="mx-2 hover:opacity-30" target="_blank" rel="noreferrer"><i className="bi bi-github"></i></a>
                    </div>
                </div>
            </div>
        </footer>
    )
}