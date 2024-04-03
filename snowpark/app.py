from snowflake.snowpark import Session


def return_simple_table(Session: session):
    df = session.table("simple_table").collect()
    return df
