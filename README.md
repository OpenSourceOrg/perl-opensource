# NAME

OpenSourceOrg::API - Perl API Bindings to the OSI License API 

# VERSION

version 0.001

# SYNOPSIS

```perl
use OpenSourceOrg::API;
my $client = OpenSourceOrg::API->new();
my $all_licenses = $client->all();
my $permisive_licenses = $client->tagged('permissive');
my $mit = $client->get('MIT');
my $Mozilla_2_0 = $client->get_by_scheme('SPDX', 'MPL-2.0');
```

# DESCRIPTION

OpenSOurceOrg::API is an API Wrapper that allows you to query the Open Source License API with Perl.

[https://github.com/OpenSourceOrg/api/blob/master/doc/endpoints.md](https://github.com/OpenSourceOrg/api/blob/master/doc/endpoints.md)

# METHODS

## all

Get a list of all known licenses. 

The response is the perl equivalent of the json returned by the api,
documented in [https://github.com/OpenSourceOrg/api/blob/master/doc/endpoints.md#schema](https://github.com/OpenSourceOrg/api/blob/master/doc/endpoints.md#schema)

## tagged

Find all licenses tagged with a `keyword` as defined in 
[https://github.com/OpenSourceOrg/api/blob/master/doc/endpoints.md#keywords](https://github.com/OpenSourceOrg/api/blob/master/doc/endpoints.md#keywords)

## get

Get a license by its OSI ID

## get\_by\_scheme

Get a license by its Scheme ID

# AUTHOR

Pablo Rodríguez González <pablo.rodriguez.gonzalez@gmail.com>

# COPYRIGHT AND LICENSE

Copyright (c) 2017 by Pablo Rodríguez González.

This is free software, licensed under:

```
The GNU Affero General Public License, Version 3, November 2007
```
