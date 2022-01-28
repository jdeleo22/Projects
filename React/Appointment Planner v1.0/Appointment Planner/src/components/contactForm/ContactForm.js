import React from "react";

export const ContactForm = ({
  name,
  setName,
  phone,
  setPhone,
  email,
  setEmail,
  handleSubmit
}) => {
  return (
    <form onSubmit={handleSubmit}>
    <label>
      <input type="text"
      name="name"
      value={name}
      onChange={(e) => setName(e.target.value)}
          required
      placeholder="Contact Name">
      </input>
    </label>
    <br />
    <label>
      <input type="tel"
      name="phone"
      value={phone}
      pattern="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$"
      onChange={(e) => setPhone(e.target.value)}
          required
          placeholder="Contact Phone Number">
      </input>
    </label>
    <br />
    <label>
      <input type="email"
      name="email"
      value={email}
      onChange={(e) => setEmail(e.target.value)}
          required
          placeholder="Contact Email">
      </input>
    </label>
    <input type="submit"></input>
    </form>
  );
};
