package OpenSourceOrg::API;

use strict;
use warnings;
use utf8;

# VERSION

# ABSTRACT: Perl API Client for OpenSource.org licenses API

use Moo;
use REST::Client;
use Const::Fast;
use JSON;

const my $base_url => 'https://api.opensource.org';

has _api_client => (
    is => 'lazy'
);

sub _build__api_client {
    my $client = REST::Client->new();
    $client->setHost($base_url);
    return $client;
}

sub all {
    my $self = shift();
    my $client = $self->_api_client;
    return $self->_handle_response( $client->GET('/licenses/') );
}

sub find {
    my $self = shift();
    my $keyword = shift();
    my $client = $self->_api_client;
    return $self->_handle_response( $client->GET('/licenses/' . $keyword) );
}
sub get {
    my $self = shift();
    my $keyword = shift();
    my $client = $self->_api_client;
    return $self->_handle_response( $client->GET('/license/' . $keyword) );
}

sub _handle_response {
    my $self = shift();
    my $response = shift();
    if ($response->responseCode() == 200) {
        return from_json($response->responseContent);
    } else {
        return 'Error: ' . $response->responseCode() . ". Content: " . $response->responseContent ;
    }
}
1;
