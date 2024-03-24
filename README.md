# Pixelart

## Specification

The specification is available in the [SPEC.md](./SPEC.md) file.

## POC

This POC is absolutely not finished.
It is basically a simple phoenix app right now, which does nothing.
You can consider for the purpose of evalutation that there is no POC.

For the POC, my plan would have been to use Phoenix channels for the backend communication
and then to wrap the socket logic in [./assets/js/collab_socket.js](./assets/js/collab_socket.js) with Automerge to create a small library that would allow for conflict free replication of the state between clients.

## Setup

### Installing Elixir and Erlang using ASDF

Please follow the instruction guide for erlang and elixir documented here:

- https://github.com/asdf-vm/asdf-erlang
- https://github.com/asdf-vm/asdf-elixir

### Running the system locally

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
