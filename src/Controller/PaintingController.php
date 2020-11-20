<?php

/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace App\Controller;

use App\Model\PaintingManager;
use Exception;

/**
 * Class ItemController
 *
 */
class PaintingController extends AbstractAPIController
{
    /**
     * Display item listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function all()
    {
        $paintingManager = new PaintingManager();
        $paintings = $paintingManager->selectAll();

        return json_encode($paintingManager->selectAll());
    }


    /**
     * Display item informations specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function show(int $id)
    {
        $paintingManager = new PaintingManager();
        $painting = $paintingManager->selectOneById($id);

        return json_encode($paintingManager->selectOneById($id));
        
    }


    /**
     * Display item edition page specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function edit(int $id): string
    {
        $paintingManager = new PaintingManager();
        $painting = $paintingManager->selectOneById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try {
                $painting = [
                    'id' => $id,
                    'nb_vote' => $painting['nb_vote'] + 1
                ];
                $paintingManager->update($painting);
                return json_encode($painting['nb_vote'], 200);
                
            } catch (Exception $e) {
                return json_encode($e->getMessage());
            }
        }
    }
            


    /**
     * Display item creation page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function add()
    {
        $paintingManager = new PaintingManager();
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try {
                $painting = [
                    'name' => $_POST['name'],
                    'url' => $_POST['url'],
                    'artist' => $_POST['artist'],
                    'nb_vote' => $_POST['nb_vote'],
                    'style' => $_POST['style'],
                    'nationality' => $_POST['nationality'],
                    'comments' => $_POST['comments']
                ];
                $id = $paintingManager->insert($painting);
                return json_encode($id, 200);
            } catch (Exception $e) {
                return json_encode($e->getMessage());
            }
        }
    }


    /**
     * Handle item deletion
     *
     * @param int $id
     */
    public function delete(int $id)
    {
        $paintingManager = new PaintingManager();
        try {
            $paintingManager = new PaintingManager();
            return json_encode($id. "deleted", 200);
            header('Location:/painting/index');
        } catch (Exception $e) {
            return json_encode($e->getMessage());
        }
    }
}