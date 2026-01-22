import React, { useState, useEffect } from "react";

export default function GamesList() {
    const [games, setGames] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);

    useEffect(() => {
        fetch("/list")
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
            <span>Results found: </span>
            <span>12</span> {/* TODO: add actual result counter from API */}
            {games.map(game => (
                <div key={game.id} className="border p-4 rounded">
                    <h2 className="text-xl font-semibold">{game.title}</h2>
                    
                </div>
            ))}
        </div>
    );
} 