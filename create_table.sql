create table if not exists test.cheese_production
(
    Year         int          null,
    Period varchar (20) null,
    Geo_Level    varchar(50)  null,
    State_ANSI   int          null,
    Commodity_ID int          null,
    Domain       varchar(100) null,
    Value        varchar(20)  null
);

create table if not exists test.coffee_production
(
    Year         int         null,
    Geo_Level    varchar(50) null,
    State_ANSI   int         null,
    Commodity_ID int         null,
    Value        varchar(20) null
);

create table if not exists test.egg_production
(
    Year         int          null,
    Period varchar (20) null,
    Geo_Level    varchar(50)  null,
    State_ANSI   int          null,
    Commodity_ID int          null,
    Domain       varchar(100) null,
    Value        varchar(20)  null
);

create table if not exists test.honey_production
(
    Year         int         null,
    Period varchar (20) null,
    Geo_Level    varchar(50) null,
    State_ANSI   int         null,
    Commodity_ID int         null,
    Value        varchar(20) null
);

create table if not exists test.milk_production
(
    Year         int         null,
    Period varchar (20) null,
    Geo_Level    varchar(50) null,
    State_ANSI   int         null,
    Commodity_ID int         null,
    Value        varchar(20) null
);

create table if not exists test.state_lookup
(
    State      varchar(50) null,
    State_ANSI int         null
);

create table if not exists test.yogurt_production
(
    Year         int          null,
    Period varchar (20) null,
    Geo_Level    varchar(50)  null,
    State_ANSI   int          null,
    Commodity_ID int          null,
    Domain       varchar(100) null,
    Value        varchar(20)  null
);

