
class users {
    include users::groups

    include users::carl
    include users::root

    users::basic { 'oliver':
        roles    => ['ops', 'www-edit', 'reporting'],
        allow    => ['munin'],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC0bMRyG8EspxOf7p2+sqWsTDq3RX6VnO65MWrp1SrCQhG6tMAsKeza82J2UuCN+GFTEO4yyO05s942UZ+5vgV+5CZ1Z6tlI7SFvovZM+fNSJn/BzQC8s1nAsVFMoAFKNNcLb7LS0rUhZ+RmDaCxIoH2TcbhxBVbynR41kbQfL1+oWnp3xmEeb/4/NKMaVYh3R/cxSe1GLlr19E/btywxzF4CGn5fNjkherrg7Bv7Mc7PmOezE7uwfbidGF0alYNOSPCKcI4t+kookD5XzP3sKPqVWCXjwSCrnuR/ViWKG1TxZtvIdKvRJwA7X7Y5eL1c9UruWtZio+Tyqa4u9obn9x',
        htpasswd => '$apr1$WdYFnpfb$nE14MA.Yra5q6K5MILDOO.'
    }

    users::basic { 'mark':
        roles    => ['developer'],
        allow    => ['munin'],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDezghb+Fmk9rLjr0yr1bym1hCWgzU02pPbvSAX5dPjU2tK5d7vuoimLfLf7VVd7M/Mz0BQwMS75mkc1/lZuPJJnCsLsAxrq1Hj7HZW2p5kgxjY8tYTc/q7bgO88MP1FnOoN/zDy09hcPdPAgooNNrFz3LiE2FPx3UsPjxjO40rLcsb2tKYe5oP5wDU0D4E2/8qhQIOb+qGU08+aMEXnoVuexq6RNFKWNM0kVpLB3kJ2i1AsrrsgdrOFMLSd6zCCFlFP4NYwyO/U3K39VPg0sFC2BtSayqCQbtef9w/E2ziNki7yLkNOHNoiROUcMxJV3Ca19olC5dafIiQWrOf9H5Z'
    }

    users::basic { 'gabriel':
        roles    => ['developer'],
        allow    => ['munin'],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDiyba8p2OCX4T2/8sOQ3WeJZiTXm7TS+INlmsmwarVpLRh7lUAnb+DdCRFDGd7ZxhJSDNqPpr6dSyjW0703GcwLbaaP3ErngzaHCZTGuw7o82RV6MYul/jpiungm04NNoz3PeNUAwM5MlSXOW6WGjKwZ29khnjMfQWBhSE4XnR1lu0uSMPKHzT10UtvBEAlEi/QKEstfIzZmcp0/DObVt+yD81hGT5O8RyhEa9A7JchETdDjffBSo+fiVu9NkiLJXlPSLgtbztv6Ap+B/UkqQWREPWrdWwz18p2AJd45Q7DtjH7dh2UnVt4+4XKBMrjwCAN6DR/hxnwQFkzi4siWED',
        htpasswd => '$apr1$DPt9tUH8$tAcbjLu6KBUw5WshJzHr91'
    }

    users::basic { 'stellan':
        roles    => ['developer'],
        allow    => ['munin'],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAAAgQDE+s/CSGkvynr/7nWe7/9Vkv2Nv6m84HTruEo9yN5vpvDp5j6XpsNklq9NgLYQs8/C46iKvbFTF/apIauHCr1lC27PI0m2n5coUNbNGoJZMhWoq4LmHdbhu4vhDgz+Vqx0hbQrNHiG7XIhsaqFnCJua8faKJUn6RKTantQr5aQDQ==',
    }

    users::basic { 'loic':
        roles    => ['content', 'www-edit'],
        allow    => [],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDMcxo84hJzUijPZpIOFWMlsm+7ECh+ap9KqkKcQG5rvJiDCtlSXyX5z3Vyw0D3Nc+TUc9uWA3oololWuxBHrVuv7r3WzdfYY7vfQ7byv5cyGrVV/VYW6AnlYa9zrglA3GjTXjCrLfCUedBO6s49sCAUeDBm9fM3N6R8FgAHYUbUXrsmgwGHWNkzZS/SpDjHVXyucVhJ2i1KgDpcLt6SHDxqPUbLES8/yEBfuRVDmJj1MQJSfUYQhGfyxiQCgFh30ADRscAp24laavYRxtGz5X/krKkOFnC23OHwoqkt/e+Fb9woC9J7PPaMwYKkJIlkZvdhLlVuTJRO7LaGJH5rPTV',
    }

    users::basic { 'ivan':
        roles    => ['developer'],
        allow    => ['munin'],
        ssh_key  => 'AAAAB3NzaC1kc3MAAACBANzuaM/M9Xj2lxx8KvACWhXqfW4a00elyzZTYgMfK9LLmBS6MTkYkm2hP1vuU/o/1ocf52EVQPU27vrcslhlhHvec7y78b6xjl3MN77+tYbjZpQgTQfKfYtZoBcQwDbX6K0s9NfGALOR398Xa2zdDiRNKQ0ERETTY0vvVmd306lXAAAAFQDgqWJbZDp4BYecATtfwRll1hCozQAAAIEA2g00ovVLTFVNghzgiLvMKRdHDaoXVr1dBGGKfWX6KZe9uv6kuK0uQKUIoa1hiMVknFiegCnVIwy4tNdfDHBQibUFedWjRBMo8AbJZI9Ln84sYbE8+E9YgY/V1WudQhIazWjrgR/8Eq7wltxywSSO5BjM7ECwbcdjVU4Vv8/CuZIAAACAdkx8kthySQXoL4ZV3UeX219Aj7C3NRw2Is4WmdESDgfb0+ZFFys6ahowb8DfnUYBiDdFb9SEFH4pbqxo79aP3S6ZazcUSzx3CGv3+g+H/luTH2vGCfT/AAWN4fzmNFx8qVykunCltmGemH15SI8TczOW93ovpXDXf/T6VrmA8Wg=',
        ssh_type => 'ssh-dss',
        htpasswd => '$apr1$T.jIlS/U$3QmwUREyPTBJXfC9f6U8S.'
    }

    users::basic { 'adrian':
        roles    => ['reporting'],
        allow    => ['munin'],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJFUnZjY1PxF5mWYMjBO+y+Imk9fPxSHk1p03YT6L8NDb3XVs7rfPkvjXLZjH5ajT1Kv3YYtduHOmqdz73pxkJkrUyKzxPdzaLZxS/ZENZPagiBS70tHyxdqpsupibWP885WSEJ/DjWykeV5ebylwYL8IjctXZtbicOf5MpE+l4pyoUgi/KBs6J+CCS9/FZiPVSDQFEjcEY5We/7Rcu19k8PxWtuZIk4/E7yilzEazeegUj//35r+us08vhkrywLey4Wcz6/OH+JYvF63b4pNQ/B9isypgFHXA2DA8Wbmr6kkwocuiUUlNqVy0HiBUHtvbhTEYWsjYALFcVLAyMocl',
    }

    users::basic { 'annamarthe':
        roles    => ['test'],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVD9dXh/nxoZw4iUx1UAb1NxwILJ4zUjJs4vDEX+1v98a7mJZtt120s5f1FDqdlQQajZLfhl/eyQTvBmg8ho3BCiIcdZKxB1E9IICRULiDgzAMQVbi9DoDA+pp5KLS9t8OF66x7GwXxZkbqE8KYz1DtctlhXyeYM2J7whkEj8qixcqpsWOdKqRpGQtd6vPAt5+vgHTiCqAYhl41kgGeCl/9fjPYP98WxvqfXwec8WqVPAMGPKbMJ8irMLOGlfavBNrXg66tP4lrQGMTi+7FsOGuZZ+UgjWVmzDmb5BbHzfPgcrMWbB5/05+2PRX4ZO9cgbW5w3lp434w5aRp+8JiEl',
    }

    users::basic { 'ruarcc':
        roles    => ['test'],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDtYfOFNyq2iP7cMNYuRt/QUlnX+z9fRlv+CBv0EypwYNpQ1ks8VPAb+dARXY0jwzq/KqU5UszqUKu8xF5w+ECec3uKnrMDgZ1UtIxjW+3KxiEqRTy8VMvfkrLDMMG0G2MZ+MxXKBLJL5OIj2b7xKi1oJcmoZ3QdbAzRU87te1AJ1sMS1fTgbW78jD8QaQ5Xi+bJXo1Jbn2fuOp2v0LdeeZ3EFXkFG8sEFiNTlcKDO8TVu4T9vXPOsrTUEKEicS73lvz6PL6RT3gkVpIEiSr2sQkVAGcfk+tYboEG1vMYv8tSUQGb7yvcCE2QHUhHI4RWxXm85Wv6SyBj0iLZrW/lQX'
    }

    users::basic { 'lynn':
        roles    => ['reporting', 'www-edit'],
        ssh_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDAoetrIBiu34tw/jD1OWlQ7fRPvMjvgmloE8Y+uaJ57Nf8qf3vgp7P7oiVs6FToApHZlVirs1ZNN8xFal0ZYV+3FyHaeZ8Y8eTnbJp/3sbY3ERNWFmMUqyfm/T/ZQ9NHyBLN3JVKtlUxTMSZ5dvjPRvUDwd/fszD8CjAXN6P8Kr94atcrOwUguXDzGcR+G+wZbAYwpnWbxxYVhmjHXQrgKnETCrxt6DExXqZh+5GTR/mCakB4x4yU4PCiVE/jAMvxBW1e4GXtk1mM3bTBDi3E5/5FX1OA8mVc3CPHV98up0NIGBGMRxXECdzjgILNHlzJBvluVORrgjxX5vK3UeMaP'
    }

    # removed users
    users::remove_user { ['paul']: }
    users::remove_user { ['lauri']: }

    Class['Users::Groups'] -> Users::Basic<||>
}
