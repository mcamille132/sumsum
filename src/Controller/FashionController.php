<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace App\Controller;

use App\Model\FashionManager;
use Exception;

/**
 * Class FashionController
 *
 */
class FashionController extends AbstractController
{


    /**
     * Display fashion listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function all()
    {
        $fashionManager = new FashionManager();
        return json_encode($fashionManager->selectAll());
    }


    /**
     * Display fashion informations specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function show($id)
    {
        $fashionManager = new FashionManager();
        return json_encode($fashionManager->selectOneById($id));
    }


    /**
     * Display fashion edition page specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function edit($id): string
    {
        $fashionManager = new FashionManager();
        $fashionManager->selectOneById($id);
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try {
                $fashion = [
                    'name' => $_POST['name'],
                    'url' => $_POST['url'],
                    'creator' => $_POST['creator'],
                    'nb_vote' => $_POST['nb_vote'],
                    'baseline' => $_POST['baseline'],
                    'localisation' => $_POST['localisation'],
                    'comments' => $_POST['comments'],
                ];
                $fashionManager->update($fashion);
                return json_encode($id." updated", 200);
            } catch (Exception $e) {
                return json_encode($e->getMessage());
            }
        }
    }


    /**
     * Display fashion creation page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function add()
    {
        $fashionManager = new FashionManager();
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try {
                $fashion = [
                    'name' => $_POST['name'],
                    'url' => $_POST['url'],
                    'creator' => $_POST['creator'],
                    'nb_vote' => $_POST['nb_vote'],
                    'baseline' => $_POST['baseline'],
                    'localisation' => $_POST['localisation'],
                    'comments' => $_POST['comments'],
                ];
                $id = $fashionManager->insert($fashion);
                return json_encode($id, 200);
            } catch (Exception $e) {
                return json_encode($e->getMessage());
            }
        }
    }


    /**
     * Handle fashion deletion
     *
     * @param int $id
     */
    public function delete($id)
    {
        $fashionManager = new FashionManager();
        try {
            $fashionManager->delete($id);
            return json_encode($id. " deleted", 200);
        } catch (Exception $e) {
            return json_encode($e->getMessage());
        }
    }
}
