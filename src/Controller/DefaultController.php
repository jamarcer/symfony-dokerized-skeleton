<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{
    #[Route(path: '/wellcome', name: 'wellcome', methods: ['GET'])]
    public function wellcome(): Response
    {
        return new Response('<h1>Welcome to your application</h1>');
    }
}
