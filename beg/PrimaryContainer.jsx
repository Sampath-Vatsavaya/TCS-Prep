import React from 'react';
import SearchContainer from './SearchContainer';
import EventContainer from './EventContainer';

const PrimaryContainer = ({ searchParams, setSearchParams }) => {
  return (
    <div>
      <SearchContainer searchParams={searchParams} setSearchParams={setSearchParams} />
      <EventContainer searchParams={searchParams} />
    </div>
  );
};

export default PrimaryContainer;
