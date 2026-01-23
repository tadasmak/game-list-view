import React from "react";
import { useState, useEffect, useRef } from "react";
import { useNavigate, useSearchParams } from "react-router-dom";
import { SearchIcon, XIcon } from "lucide-react";

export default function SearchBar() {
    const [searchParams] = useSearchParams();
    const navigate = useNavigate();
    const queryParam = searchParams.get("search") || "";
    
    const [searchQuery, setSearchQuery] = useState(queryParam);

    const searchInputRef = useRef(null);

    useEffect(() => {
        if (queryParam !== searchQuery) setSearchQuery(queryParam);
    }, [queryParam]);

    const handleSubmit = (e) => {
        e.preventDefault();
        
        const query = searchQuery.trim();

        if (query) navigate(`?search=${encodeURIComponent(query)}`);
        else navigate("");
    };

    function clearSearch() {
        setSearchQuery("");
        searchInputRef.current?.focus();
    }
    
    return (
        <form onSubmit={handleSubmit} className="flex flex-1 h-10 md:h-14 justify-center items-center border-solid border-1 border-white">
            <button type="submit" className="cursor-pointer">
                <SearchIcon className="mx-1 md:mx-3 h-[18px] md:h-[28px]" />
            </button>
            <input
                type="text"
                ref={searchInputRef}
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search games..."
                className="w-full h-3/4 text-sm md:text-lg font-bold focus:outline-none"
            />
            <div onClick={clearSearch} className="ml-auto mr-1 md:mr-3">
                <XIcon className="h-[16px] md:h-[24px]" />
            </div>
        </form>
    );
} 