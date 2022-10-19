{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is not none and target.name == 'DEVELOPER' -%}

        {{ default_schema }}_{{ custom_schema_name | trim }}

    {%- elif custom_schema_name is not none and target.name == 'PRO' -%}

        {{ custom_schema_name | trim }}

    {%- elif custom_schema_name is not none and target.name == 'DEV' -%}

        {{ custom_schema_name | trim }}

    {%- elif custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}

        {{ default_schema }}_ERROR_{{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}