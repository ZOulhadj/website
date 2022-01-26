import React from 'react';
import ReactDOM from 'react-dom';

import "./styles/main.css";

import Content from "./components/content";
import Footer from "./components/footer";

ReactDOM.render(
  <React.StrictMode>
      <Content />
      <Footer />
  </React.StrictMode>,
  document.getElementById('root')
);
