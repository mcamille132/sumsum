<?php

/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace App\Controller;
use Exception;


use App\Model\MusicManager;

/**
 * Class MusicController
 *
 */
class MusicController extends AbstractAPIController
{
    /**
     * Display music listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */

     public function all() 
     {
         $musicManager = new MusicManager ();
         return json_encode($musicManager->selectAll());
     }



    /**
     * Display music informations specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function show(int $id)
    {
        $musicManager = new MusicManager();
        return json_encode($musicManager->selectOneById($id));
    }


    /**
     * Display music edition page specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function edit(int $id): string
    {
        $musicManager = new MusicManager();
        $music = $musicManager->selectOneById($id);


        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try{
            $music = [
                'id' => $id,
                'nb_vote' => $music['nb_vote'] + 1
                ];
                $musicManager->update($music);
                return json_encode($music['nb_vote'], 200);
            }catch (Exception $e){
                return json_encode($e->getMessage());
            }
        }

    }



    /**
     * Display music creation page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function add()
    {
        $musicManager = new MusicManager();
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try{
            $music = [
                'name' => $_POST['name'],
                'url' => $_POST['url'],
                'artist' => $_POST['artist'],
                'nb_vote' => $_POST['nb_vote'],
                'style' => $_POST['style'],
                'nationality' => $_POST['nationality'],
                'comments' => $_POST['comments']
            ];
            $id = $musicManager->insert($music);
            return json_encode($id,200);
        }catch(Exception $e){
            return json_encode($e->getMessage());
        }
        }

    }


    /**
     * Handle music deletion
     *
     * @param int $id
     */
    public function delete(int $id)
    {
        $musicManager = new MusicManager();
        try{
            $musicManager->delete($id);
            return json_encode($id." deleted",200);
        }catch(Exception $e){
            return json_encode($e->getMessage());

        }

    }
}
