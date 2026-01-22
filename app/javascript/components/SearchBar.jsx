import React from "react";
import { SearchIcon, XIcon } from "lucide-react";

export default function SearchBar() {
    return (
        <div className="flex flex-1 h-14 justify-center items-center border-solid border-1 border-white">
            <SearchIcon className="mx-3" height={32} width={32} />
            <input className="w-full h-3/4 text-lg font-bold focus:outline-none" type="text" />
            <div className="ml-auto mr-3">
                <XIcon height={24} width={24} />
            </div>
        </div>
    );
} 