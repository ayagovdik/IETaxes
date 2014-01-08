package IE::Taxes;
use Dancer ':syntax';

use Plugin::Model;

use Data::Dumper;

our $VERSION = '0.1';

get '/' => sub {

    my @currencies = model('Currency')->all();
    for my $currency ( @currencies ) {
        my %data = $currency->get_inflated_columns();
        print Dumper \%data;
    }
    # template 'index';
};

true;
