use utf8;
package Model::Result::Currency;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Model::Result::Currency

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<currencies>

=cut

__PACKAGE__->table("currencies");

=head1 ACCESSORS

=head2 code

  data_type: 'integer'
  is_nullable: 0

=head2 symbol

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 3

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 sign

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 5

=head2 sign_before

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 created_at

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 updated_at

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "code",
  { data_type => "integer", is_nullable => 0 },
  "symbol",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 3 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "sign",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 5 },
  "sign_before",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "created_at",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "updated_at",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</code>

=back

=cut

__PACKAGE__->set_primary_key("code");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2014-01-08 23:52:20
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ynP6WRSMAyDUmDslxrK6bg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
