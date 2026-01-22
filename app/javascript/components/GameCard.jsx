import React from "react";
import { Link } from "react-router-dom";

export default function GameContainer(game) {
    return (
        <Link to={`/games/${game.id}`} className="flex flex-col flex-[1_0_21%] border-1 border-[#63E3C1]">
            <img src={game.image_url} className="w-full" />
            <h2>{game.title}</h2>
            
        </Link>
    )
}