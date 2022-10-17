with

---#########  SOURCES  #########
DIM_EMPLOYEE_STG as(
    select * from {{ source('STG', 'DIM_EMPLOYEE') }}
)

select * from DIM_EMPLOYEE_STG
