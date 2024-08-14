import React, { useState } from "react";
import { TextField, Button, Box, Select, MenuItem, InputLabel, FormControl } from "@mui/material";

const SearchContainer = ({ onSearch }) => {
    const [name, setName] = useState("");
    const [city, setCity] = useState("");
    const [currency, setCurrency] = useState("INR");

    const handleSubmit = (e) => {
        e.preventDefault();
        onSearch({ name, city, currency });
    };

    return (
        <Box component="form" onSubmit={handleSubmit} mb={4}>
            <TextField 
                label="Event Name" 
                value={name} 
                onChange={(e) => setName(e.target.value)} 
                variant="outlined" 
                margin="normal"
                fullWidth
            />
            <TextField 
                label="City" 
                value={city} 
                onChange={(e) => setCity(e.target.value)} 
                variant="outlined" 
                margin="normal"
                fullWidth
            />
            <FormControl fullWidth margin="normal">
                <InputLabel>Price Currency</InputLabel>
                <Select
                    value={currency}
                    onChange={(e) => setCurrency(e.target.value)}
                    label="Price Currency"
                >
                    <MenuItem value="INR">INR</MenuItem>
                    <MenuItem value="USD">USD</MenuItem>
                    <MenuItem value="EUR">EUR</MenuItem>
                    <MenuItem value="JPY">JPY</MenuItem>
                    <MenuItem value="AUD">AUD</MenuItem>
                </Select>
            </FormControl>
            <Button type="submit" variant="contained" color="primary" fullWidth>
                Search
            </Button>
        </Box>
    );
};

export default SearchContainer;
