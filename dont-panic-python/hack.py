from cs50 import SQL

db = SQL("sqlite:///dont-panic.db")

db.execute(
    """
    update users
    set password = 'hacked!'
    where username = 'admin';
    """
)