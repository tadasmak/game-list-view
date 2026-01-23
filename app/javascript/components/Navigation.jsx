import React from "react";
import SearchBar from "./SearchBar";
import { HeartIcon, ShoppingCartIcon, CircleUserIcon } from "lucide-react";

export default function Navigation() {
    return (
        <div className="flex height-full width-full py-8">
            <div className="flex items-center gap-4 w-2/3 md:w-3/4">
                <img src="/images/logo-white.png" className="h-auto w-[100px] md:w-[140px]" />
                <SearchBar />
                <div className="hidden md:block">
                    <span className="text-xl mr-2">🇱🇹</span>
                    <span>English EU | EUR</span>
                </div>
            </div>
            <div className="flex justify-end items-center gap-4 w-1/3 md:w-1/4 px-2">
                <HeartIcon className="cursor-pointer w-[18px] md:w-[28px]" />
                <ShoppingCartIcon className="cursor-pointer w-[18px] md:w-[28px]" />
                <CircleUserIcon className="cursor-pointer w-[18px] md:w-[28px]" />
            </div>
        </div>
    );
} 