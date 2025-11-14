<?php
namespace App\Controllers;

use App\Models\BiodataModel;
use App\Models\ContactModel;
use App\Models\EducationModel;
use App\Models\ExperienceModel;
use App\Models\PortofolioModel;
use App\Models\SkillsModel;

class Portofolio extends BaseController
{
   
    public function index()
{
    $biodataModel = new BiodataModel();
    $portofolioModel = new PortofolioModel();

    $data['biodata'] = $biodataModel->first(); 
    $data['portofolio'] = $portofolioModel->findAll(); 

    return view('portofolio', $data);
}


    public function education()
    {
        $model = new EducationModel();
        $data['education'] = $model->findAll();
        return view('education', $data);
    }

     public function skills()
    {
        $model = new SkillsModel();
        $data['skills'] = $model->findAll();
        return view('skills', $data);
    }

         public function experience()
    {
        $model = new ExperienceModel();
        $data['experience'] = $model->findAll();
        return view('experience', $data);
    }

        public function send()
    {
        $ContactModel = new ContactModel();

        $data = [
            'name'      => esc($this->request->getPost('name')),
            'email'     => esc($this->request->getPost('email')),
            'subject'   => esc($this->request->getPost('subject')),
            'message'   => esc($this->request->getPost('message')),
            'date'      => date('Y-m-d H:i:s'),
        ];

        if ($ContactModel->insert($data)) {
            session()->setFlashdata('success', 'Terima kasih  '   .      esc($data['name']) . ' ! Your message has been sent');

        } else {
            session()->setFlashdata('error', 'Sorry, an error occurred. Please try again.');
        }

        return redirect()->to(base_url('/#contact'));
    }


}
