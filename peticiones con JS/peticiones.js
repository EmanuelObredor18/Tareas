const apiUrl = 'https://cat-fact.herokuapp.com/facts';

fetch(apiUrl)
  .then(response => {
    if (!response.ok) {
      throw new Error(`Error de red - código ${response.status}`);
    }
    return response.json();
  })
  .then(data => {
    console.log(data);
  })
  .catch(error => {
    console.error('Error en la petición:', error);
  });
