function increment()
{
  var value = parseInt(document.getElementById('num').value, 10);
  value = isNaN(value) ? 0 : value;
  value++;
  document.getElementById('num').value = value;
}
