# README

Runs Interactive Brokers (IB) gateway as an Okinta stack.

## What is an Okinta Stack?

An Okinta stack is a deployable unit for Alga that runs within Okinta's infrastructure.
Stacks describe all necessary information to deploy a service.

For more information about Alga, refer to the [alga-infra repository][1].

[1]: https://github.com/okinta/alga-infra

## What is this Stack?

This stack runs IB gateway as a service, allowing other services to remotely
send orders to the financial markets.

## Dependencies

This stack is dependent on the [vault stack][1] in order to retrieve login
information for IB. It makes use of the [okinta/ibgateway][2] container.

[1]: https://github.com/okinta/stack-vault
[2]: https://github.com/okinta/ibgateway
