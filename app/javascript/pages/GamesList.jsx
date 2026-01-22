import React, { useState, useEffect } from "react";
import { useSearchParams } from "react-router-dom";
import GameCard from "../components/GameCard";

export default function GamesList() {
    const [games, setGames] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);

    const [searchParams, setSearchParams] = useSearchParams();

    useEffect(() => {
        setLoading(true);

        const params = {
            query: searchParams.get("query") || ""
        }

        const query = new URLSearchParams(params).toString();

        fetch(`/list?${query}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error("Network response was not ok");
                }
                return response.json();
            })
            .then(data => {
                setGames(data);
                console.log(games);
                setLoading(false);
            })
            .catch(error => {
                setError(error.message);
                setLoading(false);
            })
    }, []);

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error}</div>;

    return (
        <div className="mt-4">
            <p className="mb-4">Results found: <span className="mb-2">{games.length}</span></p> {/* TODO: add actual result counter from API */}
            <div className="flex flex-wrap gap-x-[1%] gap-y-4">
                {games.map(game => (
                    <GameCard
                        key={game.id}
                        id={game.id}
                        title={game.title}
                        platform={game.platform}
                        region={game.region}
                        image_url={game.image_url}
                        base_price={game.base_price}
                        current_price={game.current_price}
                        discount_percent={game.discount_percent}
                        has_cashback={game.has_cashback}
                        cashback_amount={game.cashback_amount}
                        likes_count={game.likes_count}
                    />
                ))}
            </div>
        </div>
    );
} 