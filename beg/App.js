import React, { useState } from 'react';
import PrimaryContainer from './components/PrimaryContainer';

const App = () => {
  const [searchParams, setSearchParams] = useState({
    name: '',
    city: '',
    currency: 'INR',
  });

  return (
    <div>
      <h1>Event Booking</h1>
      <PrimaryContainer searchParams={searchParams} setSearchParams={setSearchParams} />
    </div>
  );
};

export default App;
