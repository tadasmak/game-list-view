import React from "react";
import SearchBar from "./SearchBar";
import { HeartIcon, ShoppingCartIcon, CircleUserIcon } from "lucide-react";

export default function Navigation() {
    return (
        <div className="flex height-full width-full py-8">
            <div className="flex items-center w-3/4">
                <img src="/images/logo-white.png" className="h-auto mr-4" width="140px" />
                <SearchBar />
            </div>
            <div className="flex justify-end items-center gap-4 w-1/4">
                <HeartIcon className="cursor-pointer" width={28} height={28} />
                <ShoppingCartIcon className="cursor-pointer" width={28} height={28} />
                <CircleUserIcon className="cursor-pointer" width={28} height={28} />
            </div>
        </div>
    );
} 