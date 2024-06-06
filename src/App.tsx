const source = import.meta.env.VITE_HOST;
console.log(source);
const App = () => {
  return (
    <div>
      <video controls height="540" width="960" src={source}></video>
    </div>
  );
};

export default App;
