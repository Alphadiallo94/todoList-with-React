import React, {useState} from 'react';
import {Header} from './components/layout/Header';
import { Content } from './components/layout/Content';
import { ProjectsProvider, SelectedProjectProvider } from './context';

export const App = ({ darkModeDefault = false }) => {

  const [darkMode, setDarkMode ] = useState(darkModeDefault)

return(
  <SelectedProjectProvider>
  <ProjectsProvider>
    <main  class="leMain"
    data-testid="application" className={ darkMode ? 'darkmode' : undefined }
    >
    <div className="App">
      <Header darkMode={darkMode} setDarkMode={setDarkMode} />
      <Content />
    </div>
    </main>
  </ProjectsProvider>
  </SelectedProjectProvider>
);
}

export default App;
