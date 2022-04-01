CREATE TABLE quidditch_net_users (
                                     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                     username VARCHAR(50) NOT NULL,
                                     password VARCHAR(50) NOT NULL
);

CREATE TABLE quidditch_leagues (
                                   league_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                   league_name VARCHAR(50) NOT NULL,
                                   start_date DATE NOT NULL,
                                   end_date DATE,
                                   owner VARCHAR(50) NOT NULL,
                                   cup_wins VARCHAR(50)
);

CREATE TABLE quidditch_players (
                                   league_id INT UNSIGNED NOT NULL,
                                   member_id INT UNSIGNED NOT NULL,
                                   start_date DATE NOT NULL,
                                   end_date DATE,
                                   position VARCHAR(50) NOT NULL,
                                   FOREIGN KEY (league_id) REFERENCES quidditch_leagues (league_id),
                                   FOREIGN KEY (member_id) REFERENCES quidditch_net_users (id)
);

CREATE TABLE adlister_users (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        email VARCHAR(50) NOT NULL,
        password VARCHAR(50) NOT NULL
);

create table adlister_ads (
       ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
       title VARCHAR(50) NOT NULL,
       description VARCHAR(350) NOT NULL,
       category VARCHAR(100) NOT NULL,
       posted_by INT UNSIGNED NOT NULL,
       FOREIGN KEY (posted_by) REFERENCES adlister_users(id)
);

SELECT email FROM adlister_users
join adlister_ads aa on adlister_users.id = aa.posted_by
where id = 1
order by email;

SELECT category FROM adlister_ads
WHERE ad_id = 2;

select * FROM adlister_ads
where category = "Domestics";

select * from adlister_ads
join adlister_users au on au.id = adlister_ads.posted_by
where id = 1;