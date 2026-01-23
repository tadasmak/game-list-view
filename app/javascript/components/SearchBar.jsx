import React from "react";
import { useState, useEffect } from "react";
import { useNavigate, useSearchParams } from "react-router-dom";
import { SearchIcon, XIcon } from "lucide-react";

export default function SearchBar() {
    const [searchParams] = useSearchParams();
    const navigate = useNavigate();
    const queryParam = searchParams.get("query") || "";
    
    const [searchQuery, setSearchQuery] = useState(queryParam);

    useEffect(() => {
        if (queryParam !== searchQuery) setSearchQuery(queryParam);
    }, [queryParam]);

    const handleSubmit = (e) => {
        e.preventDefault();
        
        const query = searchQuery.trim();

        if (query) navigate(`?query=${encodeURIComponent(query)}`);
        else navigate("");
    };
    
    return (
        <form onSubmit={handleSubmit} className="flex flex-1 h-14 justify-center items-center border-solid border-1 border-white">
            <button type="submit" className="cursor-pointer">
                <SearchIcon className="mx-3" height={28} width={28} />
            </button>
            <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search games..."
                className="w-full h-3/4 text-lg font-bold focus:outline-none"
            />
            <div onClick={() => setSearchQuery("")} className="ml-auto mr-3">
                <XIcon height={24} width={24} />
            </div>
        </form>
    );
} 