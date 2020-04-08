# Coins

This API calls the coinmarketcap API to get the current bitcoin price and uses that information to calculate the price if the user sells or buys at a certain margin.

## Built With

- Rails
- GraphQL

## Live version
[See the graphiql interface](https://buycoinsgraphql2.herokuapp.com/graphiql)

We have an `allCryptos` type and a `calculatePrice` query within it that takes 3 arguments with their types.`types: string`, `margin: float` and `exchangeRate: float`

## Getting Started

**To get started, follow the instructions below**

To get a local copy up and running follow these simple example steps.

```
git clone https://github.com/onedebos/coins-api
```

```
bundle install
```

```
rails s
```
head over to the following link below to view the graphiql interface
```
http://localhost:3000/graphiql
```

### Prerequisites

- Make sure to have Rails 6.0 and Ruby 2.5.1

### Install

Install the Ruby Gems required by rails

```
bundle install
```
### Automated Tests
- Currently, there are no automated tests avaailable for this project. This will be implemented at a later date.

### Deployment

## Authors

👤 **Adebola**

- Github: [@githubhandle](https://github.com/onedebos)
- Twitter: [@twitterhandle](https://twitter.com/debosthefirst)
- Linkedin: [linkedin](https://www.linkedin.com/in/adebola-niran/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

## 📝 License

This project is [MIT](lic.url) licensed.
