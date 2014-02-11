package Plugin::Model;
use Dancer ':syntax';
use Dancer::Plugin;
use Dancer::Plugin::DBIC;

register 'model' => sub {
    return schema->resultset($_[0]);
};

register_plugin;
