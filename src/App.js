import React from 'react';
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";

import Navbar from './components/Page/Navbar';
import Footer from './components/Page/Footer';
import Contact from './components/Page/Contact';
import NotFound from './components/Page/NotFound';
import Home from './components/Home';
import About from './components/Page/About';
import Item from './components/Page/Item';
import ProjectList from './components/Project/Index';
import All from './components/Project/All';
import Website from './components/Project/Website';
import Graphic from './components/Project/Graphic';
import APP from './components/Project/APP';

function App() {
  return (
    <Router>    
      <div className="bg-light-beign w-screen font-ba">
        <Navbar />
        <Routes>
          <Route exact path="/" element={<Home />} />
          <Route path="/projects" element={<ProjectList />}>
            <Route extact index element={<All />} />
            <Route path="/projects/all" element={<All />} />
            <Route path="/projects/website" element={<Website />} />
            <Route path="/projects/graphic" element={<Graphic />} />
            <Route path="/projects/aPP" element={<APP />} />
            <Route path="/projects/other" element={<NotFound />} />
          </Route>
          <Route path="/projects/:id" element={<Item />} />
          <Route path="/about" element={<About />} />
          <Route path="*" element={<NotFound />} />
        </Routes>
        <Contact />
        <Footer />
      </div>
    </Router>
  );
}

export default App;
