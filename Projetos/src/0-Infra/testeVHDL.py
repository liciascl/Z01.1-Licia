#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Curso de Elementos de Sistemas
# Desenvolvido por: Rafael Corsi <rafael.corsi@insper.edu.br>
#
# Adaptado de :     Pedro Cunial   <pedrocc4@al.insper.edu.br>
#                   Luciano Soares <lpsoares@insper.edu.br>
# Data de criação: 07/2017

from os.path import join, dirname
import sys, os, shutil, subprocess

# Scripts python
ROOT_PATH = subprocess.Popen(
    ['git', 'rev-parse', '--show-toplevel'],
    stdout=subprocess.PIPE).communicate()[0].rstrip().decode('utf-8')
PROJ_PATH = os.path.join(ROOT_PATH, 'Projetos', 'src')
TOOL_PATH = os.path.join(ROOT_PATH, 'Projetos', 'Z01-tools')
TOOL_SCRIPT_PATH = os.path.join(TOOL_PATH, 'scripts')
sys.path.insert(0, TOOL_SCRIPT_PATH)
from report import report
from notificacao import notificacao
from testeVHDL import vhdlScript


class tstInfra(object):
    def __init__(self):
        self.pwd = os.path.dirname(os.path.abspath(__file__))
        self.log = os.path.join(TOOLSPATH,'log','logInfra.xml')
        self.rtl = os.path.join(self.pwd, 'extras/testeVHDL/rtl/')
        self.tst = os.path.join(self.pwd, 'extras/testeVHDL/tst/')
        self.work = vhdlScript(self.log)

    def addSrc(self, work):
        work.addSrc(self.rtl)

    def addTst(self, work):
        work.addSrc(self.tst)

    def add(self, work):
        self.addSrc(work)
        self.addTst(work)


if __name__ == "__main__":
    n = notificacao()

    # checa modelsim
    try:
        vsimVersion = str(subprocess.check_output(['vsim', '-version']))
        if vsimVersion is None:
            n.error('Não encontrado Modelsim (vsim)')
            sys.exit(-1)
    except:
        n.error('Não encontrado Modelsim (vsim)')
        sys.exit(-1)

    # checa VUNIT
    tstInfra = tstInfra()
    tstInfra.add(tstInfra.work)
    tstInfra.work.run()

    print("===================================================")
    r = report(tstInfra.log, 'Infra')
    error = r.hw()
    if error:
        n.error('Teste infra com problema')
    else:
        n.ok('Teste infra funcionando')
    sys.exit(error)
    print("===================================================")
