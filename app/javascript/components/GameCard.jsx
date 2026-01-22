import React from "react";
import { Link } from "react-router-dom";
import { InfoIcon, HeartIcon } from "lucide-react";

export default function GameContainer(game) {
    return (
        <Link to={`/games/${game.id}`} className="flex flex-col w-[49%] md:w-[32%] lg:w-[24%] border-1 border-[#63E3C1]">
            <div className="relative w-full">
                <img src={game.image_url} className="w-full h-[400px] object-cover" />
                <div className="absolute flex justify-center items-center bottom-0 h-6 w-full font-bold text-sm bg-black/60">{game.platform}</div>
            </div>
            <div className="bg-[#1F0A4D] text-sm text-[#9F96B7] font-bold px-3 py-2">
                <div className="leading-6 h-[72px] mb-1">
                    <h2 className="text-white">{game.title} {game.platform} Key {game.region}</h2>
                    <p className="text-[#29B194]">{game.region}</p>
                </div>
                <p className="">From <span className="line-through">€{game.base_price}</span> <span className="text-[#7CD726]">-{game.discount_percent}%</span></p>
                <div className="flex items-center text-xl">
                    <span className="text-white">€{game.current_price}</span>
                    <InfoIcon className="ml-1" height={32} />
                </div>
                <p className="text-[#7CD726]">Cashback: €{game.cashback_amount}</p>
                <div className="flex items-center">
                    <HeartIcon height={32} />
                    <span className="ml-1">{game.likes_count}</span>
                </div>
            </div>
        </Link>
    )
}