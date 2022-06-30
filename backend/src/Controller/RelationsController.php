<?php

namespace App\Controller;

use App\Entity\Relations;
use App\Form\RelationsType;
use App\Repository\RelationsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/relations")
 */
class RelationsController extends AbstractController
{
    /**
     * @Route("/", name="app_relations_index", methods={"GET"})
     */
    public function index(RelationsRepository $relationsRepository): Response
    {
        $relation = $relationsRepository->findAll();
        $resultado = [];
        foreach ($relation as $u) {
            $resultado[] = [
                'username' => $u->getUser()->getUserIdentifier(),
                'relations' => $u->getUserSons()->getId()

            ];
        }
        return $this->json(['result' => $resultado]);
    }

    /**
     * @Route("/new", name="app_relations_new", methods={"GET", "POST"})
     */
    public function new(Request $request, RelationsRepository $relationsRepository): Response
    {
        $relation = new Relations();
        $form = $this->createForm(RelationsType::class, $relation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $relationsRepository->add($relation, true);

            return $this->redirectToRoute('app_relations_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('relations/new.html.twig', [
            'relation' => $relation,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="app_relations_show", methods={"GET"})
     */
    public function show(Relations $relation): Response
    {
        return $this->render('relations/show.html.twig', [
            'relation' => $relation,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="app_relations_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Relations $relation, RelationsRepository $relationsRepository): Response
    {
        $form = $this->createForm(RelationsType::class, $relation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $relationsRepository->add($relation, true);

            return $this->redirectToRoute('app_relations_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('relations/edit.html.twig', [
            'relation' => $relation,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="app_relations_delete", methods={"POST"})
     */
    public function delete(Request $request, Relations $relation, RelationsRepository $relationsRepository): Response
    {
        if ($this->isCsrfTokenValid('delete' . $relation->getId(), $request->request->get('_token'))) {
            $relationsRepository->remove($relation, true);
        }

        return $this->redirectToRoute('app_relations_index', [], Response::HTTP_SEE_OTHER);
    }
}
