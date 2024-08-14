import React, { useState } from "react";
import eventData from "../data/events";
import { Box, Typography, Card, CardContent, Grid } from "@mui/material";
import { styled } from '@mui/system';

const currencyConversionRates = {
    INR: 1,
    USD: 0.012,   // Example conversion rate
    EUR: 0.011,   // Example conversion rate
    JPY: 1.75,    // Example conversion rate
    AUD: 0.019,   // Example conversion rate
};

// Styled component for category links
const CategoryLink = styled(Typography)(({ theme, active }) => ({
    cursor: 'pointer',
    marginRight: theme.spacing(2),
    color: active ? theme.palette.primary.main : theme.palette.text.primary,
    fontWeight: active ? 'bold' : 'normal',
    '&:hover': {
        color: theme.palette.primary.dark,
    },
}));

const EventContainer = ({ searchParams }) => {
    const [selectedCategory, setSelectedCategory] = useState("all");

    const handleCategoryClick = (category) => {
        setSelectedCategory(category);
    };

    const filteredEvents = eventData.filter(event => {
        const matchesName = event.name.toLowerCase().includes(searchParams.name.toLowerCase());
        const matchesCity = event.city.toLowerCase().includes(searchParams.city.toLowerCase());
        const matchesCategory = selectedCategory === "all" || event.category === selectedCategory;
        return matchesName && matchesCity && matchesCategory;
    });

    return (
        <Box>
            <Typography variant="h6" component="h2" gutterBottom>
                Categories
            </Typography>
            <Box mb={2} display="flex">
                <CategoryLink active={selectedCategory === "all"} onClick={() => handleCategoryClick("all")}>
                    All
                </CategoryLink>
                <CategoryLink active={selectedCategory === "sports"} onClick={() => handleCategoryClick("sports")}>
                    Sports
                </CategoryLink>
                <CategoryLink active={selectedCategory === "cultural"} onClick={() => handleCategoryClick("cultural")}>
                    Cultural
                </CategoryLink>
                <CategoryLink active={selectedCategory === "entertainment"} onClick={() => handleCategoryClick("entertainment")}>
                    Entertainment
                </CategoryLink>
            </Box>

            <Grid container spacing={2}>
                {filteredEvents.map((event, index) => {
                    const convertedPrice = (event.price * currencyConversionRates[searchParams.currency]).toFixed(2);
                    return (
                        <Grid item xs={12} sm={6} md={4} key={index}>
                            <Card>
                                <CardContent>
                                    <Typography variant="h6">{event.name}</Typography>
                                    <Typography>City: {event.city}</Typography>
                                    <Typography>Category: {event.category}</Typography>
                                    <Typography>Venue: {event.venue}</Typography>
                                    <Typography>Timings: {event.timings}</Typography>
                                    <Typography>Price: {convertedPrice} {searchParams.currency}</Typography>
                                </CardContent>
                            </Card>
                        </Grid>
                    );
                })}
            </Grid>
        </Box>
    );
};

export default EventContainer;
