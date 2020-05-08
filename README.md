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
information for IB. It produces the [okinta/ibgateway][2] container, which is
managed as a seperate generic repository.

[1]: https://github.com/okinta/stack-vault
[2]: https://github.com/okinta/ibgateway

## Development

### Building

    docker build -t okinta/stack-ibgateway .

### Running

    docker run okinta/stack-ibgateway

### Connecting to Vault

To connect to Vault locally, establish an SSH tunnel:

    ssh -N -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -L 7020:127.0.0.1:7020 <VAULT HOST>

Then to allow access to Vault inside the container, use:

    docker run --add-host "vault.in.okinta.ge:$(docker run alpine getent hosts host.docker.internal | cut -d' ' -f1)" okinta/stack-ibgateway
