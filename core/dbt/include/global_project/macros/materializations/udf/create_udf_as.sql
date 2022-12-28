{% macro get_create_udf_as_sql(relation, sql) -%}
  {{ adapter.dispatch('get_create_udf_as_sql', 'dbt')(relation, sql) }}
{%- endmacro %}

{% macro default__get_create_udf_as_sql(relation, sql) -%}
  {% do exceptions.raise_compiler_error('`get_create_udf_as_sql` is not implemented for this adapter!') %}
{% endmacro %}
