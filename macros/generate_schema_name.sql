{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is not none and 'DBT_PRO' in target.name -%}

        {{ custom_schema_name}}

    {%- elif custom_schema_name is not none and 'DBT_DEV' in target.name -%}
    
        {{ custom_schema_name}}

    {%- else -%}

        {{ default_schema }}_{{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}