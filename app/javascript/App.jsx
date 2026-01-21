import React from "react";
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import GamesList from "./pages/GamesList";

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
          <Route path="/" element={<GamesList />} />
      </Routes>
    </BrowserRouter>
  );
}