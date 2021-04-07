<div align="center">
  <img title="haBits logo" alt="haBits logo" width="100px" src="/app/assets/images/habits_large.png">
</div>
<div align="center">
  <img title="React.js" alt="React logo" width="60px" src="/app/assets/images/logo_react.webp">
  <img title="Ruby On Rails" alt="Roby On Rails logo" width="120px" src="/app/assets/images/logo_rails.png">
  <img title="GraphQL" alt="GraphQL logo" width="60px" src="/app/assets/images/logo_graphql.png">
</div>

# haBits ☑

Building Habits, bit by bit.

> _A personal web project to learn Ruby on Rails, React, and GraphQL_

![https://screenshot.click/2021-30-633rd-jsgvg.png](https://screenshot.click/2021-30-633rd-jsgvg.png)

## Getting started

`$ git clone https://github.com/ztratify/habits` (or similar) to clone the repo locally

`$ cd habits` to open the project

`$ yarn install` to download dependencies

`$ rails db:seed` to seed the database

`$ rails s` to start the rails server

Finally visit [http://localhost:3333](http://localhost:3333) to **start building habits!**

## GraphQL

Explore GraphQL Schema using _graphiql_ interface: [http://localhost:3333/graphiql](http://localhost:3333/graphiql)

### Queries

Habits & Steps with custom search, filtering and sort:

```graphql
query habitsAndSteps {
  habits (
    order: CREATED
    search: "WATER"
  ) {
    id
    title
    goal
    period
    slug
    steps (
      order: DATE
      startDate: "2021-11-11"
      endDate: "2021-11-13"
    ) {
      goal
      progress
      isComplete
    }
  }
}
```

### Mutations

Create Habit:

```graphql
mutation createHabit {
  createHabit(input:{
    title: "💦 FILL WATER BOTTLE",
    goal: 3,
    period: "daily"
  }) {
    habit {
      id
      title
      slug
      createdAt
    }
  }
}
```

Update Habit:

```graphql
mutation updateHabit {
  updateHabit(input:{
    id: 11,
    title: "👨‍💻 15 MINUTES OF CODE",
    goal: 3,
  }) {
    habit {
      goal
      title
      period
      slug
      id
    }
  }
}
```

Delete Habit:

```graphql
mutation deleteHabit {
  deleteHabit(input:{
    id: 11
  }) {
    habit {
      id
      slug
    }
  }
}
```

Create Habit Steps (progress):

```graphql
mutation createSteps {
  createSteps(input:{
    habitId: 11,
    date: "2021-11-11",
    progress: 3,
  }) {
    step {
      date
      goal
      progress
      isComplete
      habit {
        title
        goal
      }
    }
  }
}
```

Update Habit Steps (record progress):

```graphql
mutation updateSteps {
  updateSteps(input:{
    habitId: 11,
    date: "2021-11-11",
    progress: 1,
  }) {
    step {
      date
      goal
      progress
      isComplete
      habit {
        title
        goal
      }
    }
  }
}
```


## TODO (update with):

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
