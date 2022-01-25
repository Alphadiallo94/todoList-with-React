import React from 'react';
import {Header} from './components/layout/Header';
import { Sidebar, Content } from './components/layout/Content';


export const App = () => {
  return (
    <div className="App">
      <Header />
      <Content />
    </div>
  );
}

export default App;
