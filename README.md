## The unite is an open source messaging system for microservice, and real-time internet connected devices. The unite messaging API is built for speed and security.

The unite is a real-time messaging system for microservices, and real-tme internet connected devices, it is based on Grpc communication. The unite satisfy the requirements for low latency and binary messaging, it is perfect messaging system for internet connected devices.

The unite_messaging client is an implementation of unite messaging system supporting subscription/publishing at all QOS levels, keep alive and synchronous connection. The client is designed to take as messaging protocol work off the user as possible, connection protocol is handled automatically as are the message exchanges needed to support the different QOS levels and the keep alive mechanism. This allows the user to concentrate on publishing/subscribing and not the details of messaging itself.

## Quick Start
To build [unite](https://github.com/unit-io/unite) from source code use go get command and copy unite.conf to the path unite binary is placed.

> go get -u github.com/unit-io/unite

### Usage
Make use of the client by importing the packet to your Flutter or Dart project. For example,

import "package:unite_messaging"

Samples are available in the example directory for reference.

## Contributing
If you'd like to contribute, please fork the repository and use a feature branch. Pull requests are welcome.

## Licensing
This project is licensed under [MIT License](https://github.com/unit-io/unite-dart/blob/master/LICENSE).