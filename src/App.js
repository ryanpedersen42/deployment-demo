import pups from './pups.jpg'
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={pups} className="image" alt="logo" />
        <p>
        👋 Welcome to our canary🐦 page 👋
        </p>
      </header>
    </div>
  );
}

export default App;
