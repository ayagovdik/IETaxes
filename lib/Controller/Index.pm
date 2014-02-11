package Controller::Index;
use Dancer ':syntax';

use Plugin::Model;

use Data::Dumper;

our $VERSION = '0.1';

get '/' => sub {

	template 'index/welcome';
};

true;
