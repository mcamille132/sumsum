<?php
/**
 * Created by PhpStorm.
 * User: aurelwcs
 * Date: 08/04/19
 * Time: 18:40
 */

namespace App\Controller;
use App\Model\PaintingManager;
use App\Model\PhilosopherManager;
use App\Model\MusicManager;
use App\Model\FashionManager;

class HomeController extends AbstractAPIController
{

    /**
     * Display home page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function topPainting()
    {
        $paintingManager = new PaintingManager();
        return json_encode($paintingManager->getTop());
    }

    public function topMusic()
    {
        $musicManager = new MusicManager();
        return json_encode($musicManager->getTop());
    }

    public function topFashion()
    {
        $fashionManager = new FashionManager();
        return json_encode($fashionManager->getTop());
    }

    public function topPhilosopher()
    {
        $philosopherManager = new PhilosopherManager();
        return json_encode($philosopherManager->getTop());
    }
}
