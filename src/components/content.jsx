import {
  HashRouter as Router,
  Routes,
  Route,
} from "react-router-dom";

import Navbar from "./navbar";

import Home from "../pages/home";
import About from "../pages/about";
import Blog from "../pages/blog";
import FAQ from "../pages/faq";
import Contact from "../pages/contact";

export default function Content() {
    return (
        <div>
            <Router>
                <div>
                    <Navbar />
                    <div className="container">
                        <Routes>
                            <Route exact path="/" element={<Home/>} />
                            <Route path="/about" element={<About/>} />
                            <Route path="/blog" element={<Blog/>} />
                            <Route path="/faq" element={<FAQ/>} />
                            <Route path="/contact" element={<Contact/>} />
                        </Routes>
                    </div>
                </div>
            </Router>
        </div>
    );

}
