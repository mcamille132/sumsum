<?php

/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace App\Controller;

use App\Model\PhilosopherManager;
use Exception;

/**
 * Class ItemController
 *
 */
class PhilosopherController extends AbstractAPIController
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
        $philosopherManager = new PhilosopherManager();
        return json_encode($philosopherManager->selectAll());
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
    public function show($id)
    {
        $philosopherManager = new PhilosopherManager();
        return json_encode($philosopherManager->selectOneById($id));
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
        $philosopherManager = new PhilosopherManager();
        $philosopher = $philosopherManager->selectOneById($id);
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try {
                $philosopher = [
                    'id' => $id,
                    'nb_vote' => $philosopher['nb_vote'] + 1
                ];
                    
                $philosopherManager->update($philosopher);
                return json_encode($philosopher['nb_vote'], 200);
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
        $philosopherManager = new PhilosopherManager();
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try {
                $philosopher = [
                    'name' => $_POST['name'],
                    'url' => $_POST['url'],
                    'nb_vote' => $_POST['nb_vote'],
                    'style' => $_POST['style'],
                    'nationality' => $_POST['nationality'],
                    'job' => $_POST['job'],
                    'comments' => $_POST['comments'],
                    'artist' => $_POST['artist']
                ];
                $id = $philosopherManager->insert($philosopher);
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
    public function delete($id)
    {
        $philosopherManager = new PhilosopherManager();
        try {
            $philosopherManager->delete($id);
            return json_encode($id." deleted", 200);
        } catch (Exception $e) {
            return json_encode($e->getMessage());
        }
    }
}
