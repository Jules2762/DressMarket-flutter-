# Dress Market

A modern Flutter application for clothing product management and online shopping, powered by Supabase.

## Overview

Dress Market is designed to provide a smooth mobile shopping experience with a scalable backend architecture.

Main features include:

* Product browsing by category
* User authentication
* Favorites management
* Order creation
* Payment tracking
* Realtime data synchronization

## Built With

* Flutter
* Dart
* Supabase
* Provider
* PostgreSQL

## Project Structure

```text
lib/
├── core/
│   ├── models/
│   ├── services/
│   ├── states/
│   └── themes/
│
├── views/
│   ├── screens/
│   └── widgets/
```

## Getting Started

Clone the repository:

```bash
git clone https://github.com/Jules2762/DressMarket-flutter-.git
```

Install dependencies:

```bash
flutter pub get
```

Run the project:

```bash
flutter run
```

## Backend Configuration

This project uses Supabase for:

* Authentication
* Database
* Realtime updates
* Storage

Configure your Supabase keys before running the app.

## Database Main Tables

* profiles
* categories
* products
* favorites
* orders
* order_items
* payments

## Development Notes

Recommended Git workflow:

* main
* dev
* feature/*

Commit example:

```bash
feat: add product realtime sync
```

## Resources

Useful links:

* https://docs.flutter.dev/
* https://supabase.com/docs

## Author

Flutter project built with modern mobile architecture.
![Flutter](https://img.shields.io/badge/Flutter-Framework-blue)
![Supabase](https://img.shields.io/badge/Supabase-Backend-green)
![Provider](https://img.shields.io/badge/State%20Management-Provider-orange)
