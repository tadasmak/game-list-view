import React from "react";
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";

function Home() {
  return (
    <div>
      <h1>Home</h1>
      <p>Welcome to the game list app!</p>
    </div>
  );
}

function GameList() {
  return (
    <div>
      <h1>Games</h1>
      <p>List of games will go here</p>
    </div>
  );
}

export default function App() {
  return (
    <BrowserRouter>
      <nav>
        <Link to="/">Home</Link> | <Link to="/games">Games</Link>
      </nav>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/games" element={<GameList />} />
      </Routes>
    </BrowserRouter>
  );
}