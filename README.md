
# How To


## Clone this repo
```bash
git clone https://github.com:rozbr96/eventizer
```

## Change dir
```bash
cd eventizer
```

## Initialize the submodules
```bash
git submodule init
```

## Update them
```bash
git submodule update --recursive
```

## Set your TMDb API authorization token
```bash
token=your token goes here
sed -Ei "s/=$/=$token/" .env.api
```

## Start
```bash
docker compose up
```

## Grab a cup of coffee or water (optional)
Wait for it to finish (non optional)

## Seed
After services get up, you can seed some data with
```bash
docker compose exec api npm run seed
```

or if you are lazy
```bash
make seed
```

There are three users:
|  Name       |  Role     |  Email                |
|-------------|-----------|-----------------------|
| Organizador | Organizer | organizador@email.com |
| Porteiro    | Doorman   | porteiro@email.com    |
| Cliente A   | Client    | cliente.a@email.com   |
| Cliente B   | Client    | cliente.b@email.com   |

**All users' password:** ```password```

## Browse
Visit [http://localhost](http://localhost)

**Hint**: For account creation, you can use any email, as longs as it's a valid format.

You can check your received emails at [http://localhost/mailer](http://localhost/mailer)
