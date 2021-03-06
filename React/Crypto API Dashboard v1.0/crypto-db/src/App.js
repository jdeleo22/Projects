import CurrencyConverter from "./components/CurrencyConverter";
import NewsFeed from "./components/NewsFeed";

function App() {
  return (
    <div className="app">
      <h1>Crypto Dashboard</h1>
      <div className="wrap">
      <CurrencyConverter />
      <NewsFeed />
      </div>
      
    </div>
  );
}

export default App;
