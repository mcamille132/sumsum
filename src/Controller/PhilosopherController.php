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

/**
 * Class ItemController
 *
 */
class PhilosopherController extends AbstractController
{
    /**
     * Display item listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    //all//
    public function index()
    {
        $philosopherManager = new PhilosopherManager();
        $philosophers = $philosopherManager->selectAll();

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
    public function show()
    {
        $philosopherManager = new PhilosopherManager();
        $philosophers = $philosopherManager->selectOneById();

        return json_encode($philosopherManager->selectOneById());
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
    //update//
    public function edit($id)
    {
        $philosopherManager = new PhilosopherManager();
        if ($_SERVER['REQUEST_METHOD'] === 'POST'){
            try{
                $philosopher = [ 
                    'id' => $id,
                    'name' => $_POST['name'],
                    'url' => $_POST['url'],
                    'quote' => $_POST['quote'],
                    'nb_vote' => $_POST['nb_vote'],
                    'movement' => $_POST['movement'],
                    'nationality' => $_POST['nationality'],
                    'job' => $_POST['job'],
                    'comments' => $_POST['comments']
                ];
            $philosopherManager->edit($philosopher);
            return json_encode($id." edit", 200);
            }   catch(Exception $e){
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
    //create//
    public function add()
    {
        $philosopherManager = new PhilosopherManager();
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try{
            $philosopher = [
                'name' => $_POST['name'],
                'url' => $_POST['url'],
                'quote' => $_POST['quote'],
                'nb_vote' => $_POST['nb_vote'],
                'movement' => $_POST['movement'],
                'nationality' => $_POST['nationality'],
                'job' => $_POST['job'],
                'comments' => $_POST['comments']
            ];
            $id = $philosopherManager->insert($philosopher);
            return json_encode($id, 200);
        }catch (Exeption $e){
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
        $philosopherManager = new PhilosopherManager();
        try{
            $philosopherManager->delete($id);
            return json_encode($id." deleted", 200);
        }catch (Exception $e){
            return json_encode($e->getMessage());
        }
    }
}
