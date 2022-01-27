import { Link } from "react-router-dom";

export default function Navbar() {
    return (
        <div className="navbar">
            <center>
                <Link className="nav-button" to="/">
                    Home
                </Link>
                <Link className="nav-button" to="/about">
                    About
                </Link>
                <Link className="nav-button" to="/blog">
                    Blog
                </Link>
                <Link className="nav-button" to="/faq">
                    FAQ
                </Link>
                <Link className="nav-button" to="/contact">
                    Contact
                </Link>
            </center>
        </div>
  );
}
