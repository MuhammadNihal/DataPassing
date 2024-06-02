# Passing User Data Between View Controllers - Swift

This guide demonstrates how to pass user data from one view controller to another in a Swift application.

## Overview

In iOS development, passing data between view controllers is a common task. This example showcases how to pass user data from the first view controller to the second view controller using the delegation pattern.

## First View Controller

- User inputs their name and email.
- Upon tapping "Next", data is passed to the second view controller.

## Second View Controller

- Receives user data through the `UserData` protocol.
- Updates its UI to display the received user data.

## Conclusion

By implementing delegation, you can seamlessly pass user data between view controllers, enabling modular and maintainable code in your Swift applications.
