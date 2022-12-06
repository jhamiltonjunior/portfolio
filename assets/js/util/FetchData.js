export default class FetchData {
  constructor(url) {
    this.url = url;
  }

  async response() {
    const data = fetch(this.url);

    return data
      .then((response) => response.json())
      .then((json) => console.log(json))
      .catch((err) => err);
  }
}
