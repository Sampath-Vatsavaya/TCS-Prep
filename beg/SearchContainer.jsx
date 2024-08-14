import React from 'react';

const SearchContainer = ({ searchParams, setSearchParams }) => {
  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setSearchParams((prev) => ({ ...prev, [name]: value }));
  };

  return (
    <div>
      <input
        type="text"
        name="name"
        placeholder="Search by name"
        value={searchParams.name}
        onChange={handleInputChange}
      />
      <input
        type="text"
        name="city"
        placeholder="Search by city"
        value={searchParams.city}
        onChange={handleInputChange}
      />
      <select name="currency" value={searchParams.currency} onChange={handleInputChange}>
        <option value="INR">INR</option>
        <option value="USD">USD</option>
        <option value="EUR">EUR</option>
        <option value="JPY">JPY</option>
        <option value="AUD">AUD</option>
      </select>
    </div>
  );
};

export default SearchContainer;
