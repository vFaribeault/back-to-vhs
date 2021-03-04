// get input start_date and end_date
const priceCalculation = () => {
  const bookingStartDate = document.getElementById('booking_start_date');
  const bookingEndDate = document.getElementById('booking_end_date');
  const pricePerDayString = document.getElementById('price-per-day').dataset.pricePerDay;
  const pricePerDay = parseInt(pricePerDayString);
  // if both are present
  if (bookingStartDate != null && bookingEndDate != null) {
    // time difference
    const bookingDays = bookingEndDate.valueAsDate - bookingStartDate.valueAsDate;
    // days difference
    const diffDays = Math.ceil(bookingDays / (1000 * 3600 * 24));
    const totalPrice = diffDays * pricePerDay;

  }
};

export { priceCalculation };


