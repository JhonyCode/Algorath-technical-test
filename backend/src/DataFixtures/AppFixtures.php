<?php

namespace App\DataFixtures;

use App\Entity\Relations;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $user = new User();
        $user->setUsername('Algorath');
        $user->setPassword('Algorath');
        $manager->persist($user);
        $user = new User();
        $user->setUsername('Algorath1');
        $user->setPassword('Algorath1');
        $manager->persist($user);
        $user = new User();
        $user->setUsername('Algorath2');
        $user->setPassword('Algorath2');
        $manager->persist($user);

        for ($i = 0; $i < 5; $i++) {
            $relation = new Relations();
            $relation->setUser($user);
            $relation->setUserSons($user);
            $manager->persist($relation);
        }$manager->flush();
    }
}



