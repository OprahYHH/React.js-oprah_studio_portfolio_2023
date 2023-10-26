import React, { Component } from 'react';

import About from './Page/About';
import Project from './Page/Project';
import Cover from './Page/Cover';

class Home extends Component {
    render() {
        return (
            <div>
                <Cover />
                <About />
                <Project />
            </div>
        )
    }
}

export default Home;