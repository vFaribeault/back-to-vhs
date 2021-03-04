
const priceCalculation = () => {
  // get input start_date and end_date
  const bookingStartDate = document.getElementById('booking_start_date');
  const bookingEndDate = document.getElementById('booking_end_date');
  if (bookingStartDate && bookingEndDate) {
    bookingStartDate.addEventListener('change', () => {
      computePrice(bookingStartDate, bookingEndDate);
    })
    bookingEndDate.addEventListener('change', () => {
      computePrice(bookingStartDate, bookingEndDate);
    })
  }
};


const computePrice = (bookingStartDate, bookingEndDate) => {
  if (bookingStartDate.value != "" && bookingEndDate.value != "") {

    const pricePerDayTag = document.getElementById('price-per-day');
    const pricePerDayString = pricePerDayTag.dataset.pricePerDay;
    const pricePerDay = parseInt(pricePerDayString);
    // time difference
    const bookingDays = bookingEndDate.valueAsDate - bookingStartDate.valueAsDate;
    // days difference
    const diffDays = Math.ceil(bookingDays / (1000 * 3600 * 24));
    const totalPrice = diffDays * pricePerDay;
    // console.log(totalPrice);
    pricePerDayTag.innerText = `Price per day ${totalPrice}$`;
  }
}

export { priceCalculation };


