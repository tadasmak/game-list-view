import React from "react";
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import Navigation from "./components/Navigation";
import GamesList from "./pages/GamesList";

export default function App() {
  return (
    <BrowserRouter>
      <Navigation />
      <Routes>
          <Route path="/" element={<GamesList />} />
      </Routes>
    </BrowserRouter>
  );
}