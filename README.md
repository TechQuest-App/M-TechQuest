# M-TechQuest
Tech Quest is a versatile platform primarily designed to enhance focus and productivity within Team CAT Reloaded, but it's also open to anyone looking to join our learning community. By providing personalized roadmaps, It fosters a supportive community where members can discuss challenges, share solutions, and connect with mentors.
=======
## Contributers

## Team Members

* [Mustafa Magdy](https://github.com/mustafa-dev-nasr)
* [Yousef Elkholy](https://github.com/YousefElkholy22)

# System Design

This document outlines the system design for the project, highlighting the core components and feature modules.

## Core

- **DI (Dependency Injection)**
  - Using `get_it` for dependency injection.
- **Networking**
  - Utilizing `Dio` and `Retrofit` for networking operations.
- **Routing**
  - Handling navigation and routing within the app.
- **Helpers**
  - Utility functions and helper classes.
- **Theming**
  - Managing app-wide theming and styles.
- **Widgets**
  - Reusable widgets used across different parts of the app.

## Features

### Home

This is a feature module for the home screen.

#### Home Module Structure

- **data**
  - **models**
    - Data models representing the structure of the data.
  - **repo**
    - Repository pattern for data access and management.
- **logic**
  - **cubit/states**
    - Business logic layer using Cubit and states for state management.
- **ui**
  - **screens/widgets**
    - UI components and screens for the home feature.
