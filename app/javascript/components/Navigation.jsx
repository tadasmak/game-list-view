import React from "react";
import SearchBar from "./SearchBar";

export default function Navigation() {
    return (
        <div className="flex height-full width-full py-8">
            <div className="flex items-center w-3/4">
                <img src="/images/logo-white.png" className="h-auto mr-4" width="140px" />
                <SearchBar />
            </div>
            <div className="flex justify-end items-center w-1/4">smth</div>
        </div>
    );
} 