use utf8;
package Model::Result::Contract;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Model::Result::Contract

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

=head1 TABLE: C<contracts>

=cut

__PACKAGE__->table("contracts");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 client_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 number

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 date_begin

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 date_end

  data_type: 'date'
  datetime_undef_if_invalid: 1
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
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "client_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "number",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "date_begin",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "date_end",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
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

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2014-01-08 23:52:20
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZOflZ8l+pyTepgWqbK2h4g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
