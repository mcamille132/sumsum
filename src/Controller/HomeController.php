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

class HomeController extends AbstractController
{

    /**
     * Display home page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function index()
    {
        $top = [];
        $paintingManager = new PaintingManager();
        $painting = $paintingManager->getTop();
        $musicManager = new MusicManager();
        $music = $musicManager->getTop();
        $fashionManager = new FashionManager();
        $fashion = $fashionManager->getTop();
        $philosopherManager = new PhilosopherManager();
        $philosopher = $philosopherManager->getTop();
        
        $top = [$painting,$music, $fashion, $philosopher];
        return json_encode($top);
        
    }
}
