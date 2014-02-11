package Controller::Currency;
use Dancer ':syntax';

use Plugin::Model;

use Data::Dumper;

our $VERSION = '0.1';

prefix '/currency';

get '/' => sub {

	my @data;
    my @currencies = model('Currency')->all();
    for my $currency ( @currencies ) {
    	my %currency = $currency->get_inflated_columns();
    	# warn Dumper \%currency;
    	push @data, \%currency;
    }
    # warn Dumper \%data;
    template 'currency/list', { currencies => \@currencies };
};

true;
