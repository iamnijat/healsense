

![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/iamnijat/healsense/Flutter%20CI/master)
![GitHub forks](https://img.shields.io/github/forks/iamnijat/healsense)
![GitHub stars](https://img.shields.io/github/stars/iamnijat/healsense)
![GitHub watchers](https://img.shields.io/github/watchers/iamnijat/healsense)
![GitHub contributors](https://img.shields.io/github/contributors/iamnijat/healsense)
![GitHub last commit](https://img.shields.io/github/last-commit/iamnijat/healsense)
![GitHub top language](https://img.shields.io/github/languages/top/iamnijat/healsense)

# Flutter Healsense Application

![Frame 1](https://user-images.githubusercontent.com/42466886/209528036-684f1fae-2be3-47cc-9d18-a285a19a7afe.png)

## Instructions

Every code structure for this application is open source apart from `GOOGLE_MAPS_API_KEY`. Since this is an application in production, you must get `GOOGLE_MAPS_API_KEY`, create `.env` file on the top of the project, and include the key right there for running the app successfully.


## Supported Null safety

### Project architecture (DDD Architecture Approach)
##### 1. Why:
    * We want to determine what types of database that we use for storage (might want to change it later on)
    * We want to adhere to SOLID principles since we are using OOP for this project.
    * We want to ensure that UI layers do not care what is going on at the data layer at all.
    * We might want to separate each layer into different packages.
##### 2. Application - Di - Domain - Infrastructure - L10N - Presentation.
##### 3. Presentation layer consist of
    * Pages
    * Widgets

##### 4. Domain layer 
    * Core (Value objects, Failures)
    * Repositories interface
    * Entities
    * Typically one function, but can be more if functions are related.
    * Remember, one class has one responsibility only.

##### 5. Infrastructure layer
    * Core
    * Data Source
        * locals (Database)
        * remotes (API)
    * Repositories (Implementation from Domain layer)
    * Models
    * Services

##### 6. Application layer
    * State Management solution (Riverpod Binding Framework)
    * States according to that framework
    * Notifiers according to that framework

##### 7. More insight of layers

![DDD-Flutter-Diagram-v3](https://user-images.githubusercontent.com/42466886/209529022-740e80cd-1ca4-433d-b6c1-8624faebd26d.svg)


### DI pattern
`Dependency Injection` is a great design pattern that allows us to eliminate rigid dependencies between elements and it makes the application more flexible, easy to expand scales and maintain.
In the project we use Plugin `injectable` and `get_it` to implement DI and we have also defined classes so you can easily implement `DI` in the `DI layer`.

### Routes
The project has predefined Named routes (Go Router)

### resources
      * All resources (images, fonts, videos, ...) must be placed in the assets class

### Getting started
Get dependencies and generate necessary files.

We'll handle the generation of required files for 🚀 your onboarding!


### Localization
Using this library to handle multi-languages. Follow this guide to understand and config languages files


---------

You've done entire steps correctly and I make sure that this project will have paramount effect on your progress learning `Flutter`

