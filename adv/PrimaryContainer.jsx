import React, { useState } from "react";
import SearchContainer from "./SearchContainer";
import EventContainer from "./EventContainer";
import { Box } from "@mui/material";

const PrimaryContainer = () => {
    const [searchParams, setSearchParams] = useState({ name: "", city: "", currency: "INR" });

    const handleSearch = (params) => {
        setSearchParams(params);
    };

    return (
        <Box mt={4}>
            <SearchContainer onSearch={handleSearch} />
            <EventContainer searchParams={searchParams} />
        </Box>
    );
};

export default PrimaryContainer;
