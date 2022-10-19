with

---#########  SOURCES  #########
DIM_EMPLOYEE_STG as(
    select * from {{ source('STG', 'DIM_EMPLOYEE') }}
),

CSV_DIM_POSITIONS as(
    select * from {{ ref('CSV_DIM_POSITIONS')}}
),

---#########  TRANSFORM  #########
JOIN_POSITION as(
    select
        empl.ID_EMPLYEE AS ID_EMPLOYEE
        ,empl.NAME
        ,empl.ID_DEPARTMENT
        ,pos.ID_POSITION
        ,pos.POSITION
    from DIM_EMPLOYEE_STG empl
    left join CSV_DIM_POSITIONS pos
    on empl.ID_POSITION = pos.ID_POSITION
)

select * from JOIN_POSITION
