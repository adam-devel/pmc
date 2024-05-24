module main

import os
import cli
import net.http

fn main() {
	mut app := cli.Command{
		name: 'pmc'
		description: 'A mod manager for minecraft.'
		disable_man: true
		posix_mode: true
	}

	app.add_command(cli.Command{
		name: 'search'
		description: 'Search for mods.'
		usage: '<search-query>'
		disable_man: true
		disable_flags: true
		execute: search
	})

	app.add_command(cli.Command{
		name: 'install'
		description: 'Install a mods.'
		usage: '<mods>...'
		disable_man: true
		disable_flags: true
		execute: fn (cmd cli.Command) ? {
		}
	})

	app.add_command(cli.Command{
		name: 'update'
		description: 'Update mods.'
		usage: '[<mods>...]'
		disable_man: true
		disable_flags: true
		execute: fn (cmd cli.Command) ? {
		}
	})

	app.add_command(cli.Command{
		name: 'remove'
		description: 'Remove mods.'
		usage: '<mods>...'
		disable_man: true
		disable_flags: true
		execute: fn (cmd cli.Command) ? {
		}
	})

	app.add_command(cli.Command{
		name: 'disable'
		description: 'Disable mods.'
		usage: '<mods>...'
		disable_man: true
		disable_flags: true
		execute: fn (cmd cli.Command) ? {
		}
	})

	app.add_command(cli.Command{
		name: 'enable'
		description: 'Enable mods.'
		usage: '<mods>...'
		disable_man: true
		disable_flags: true
		execute: fn (cmd cli.Command) ? {
		}
	})

	app.add_command(cli.Command{
		name: 'list'
		description: 'List mods.'
		disable_man: true
		disable_flags: true
		execute: fn (cmd cli.Command) ? {
		}
		// TODO: add --enabled and --disabled filters
	})

	app.add_flag(cli.Flag{
		flag: .string
		name: 'directory'
		abbrev: 'd'
		description: 'Specify installation directory.'
		default_value: ['~/.minecraft/mods']
	})

	app.add_flag(cli.Flag{
		flag: .string
		name: 'version'
		abbrev: 'v'
		description: 'Specify minecraft version.'
		required: true
	})

	app.setup()
	app.parse(os.args)
}

// Commands
fn search(cmd cli.Command) ? {
	search_uri := 'api.modrinth.com/v2/search'
}

// Utils
