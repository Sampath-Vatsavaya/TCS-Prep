import React from "react";
import PrimaryContainer from "./components/PrimaryContainer";
import { Container, Typography } from "@mui/material";

function App() {
    return (
        <Container>
            <Typography variant="h4" component="h1" gutterBottom>
                Event Booking
            </Typography>
            <PrimaryContainer />
        </Container>
    );
}

export default App;
