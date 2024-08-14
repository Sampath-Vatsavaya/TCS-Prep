import React, { useState } from "react";
import eventData from "../data/events";

const currencyConversionRates = {
  INR: 1,
  USD: 0.012,   // Example conversion rate
  EUR: 0.011,   // Example conversion rate
  JPY: 1.75,    // Example conversion rate
  AUD: 0.019,   // Example conversion rate
};

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
    <div>
      <h2>Categories</h2>
      <div>
        <span onClick={() => handleCategoryClick("all")} style={{ marginRight: "10px", cursor: "pointer", fontWeight: selectedCategory === "all" ? "bold" : "normal" }}>
          All
        </span>
        <span onClick={() => handleCategoryClick("sports")} style={{ marginRight: "10px", cursor: "pointer", fontWeight: selectedCategory === "sports" ? "bold" : "normal" }}>
          Sports
        </span>
        <span onClick={() => handleCategoryClick("cultural")} style={{ marginRight: "10px", cursor: "pointer", fontWeight: selectedCategory === "cultural" ? "bold" : "normal" }}>
          Cultural
        </span>
        <span onClick={() => handleCategoryClick("entertainment")} style={{ cursor: "pointer", fontWeight: selectedCategory === "entertainment" ? "bold" : "normal" }}>
          Entertainment
        </span>
      </div>

      <div>
        {filteredEvents.map((event, index) => {
          const convertedPrice = (event.price * currencyConversionRates[searchParams.currency]).toFixed(2);
          return (
            <div key={index} style={{ border: "1px solid #ccc", padding: "10px", margin: "10px 0" }}>
              <h3>{event.name}</h3>
              <p>City: {event.city}</p>
              <p>Category: {event.category}</p>
              <p>Venue: {event.venue}</p>
              <p>Timings: {event.timings}</p>
              <p>Price: {convertedPrice} {searchParams.currency}</p>
            </div>
          );
        })}
      </div>
    </div>
  );
};

export default EventContainer;
