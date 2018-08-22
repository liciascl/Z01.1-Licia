#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Curso de Elementos de Sistemas
# Desenvolvido por: Rafael Corsi <rafael.corsi@insper.edu.br>
#
# Adaptado de :     Pedro Cunial   <pedrocc4@al.insper.edu.br>
#                   Luciano Soares <lpsoares@insper.edu.br>
# Data de criação: 07/2017

from os.path import join, dirname
import sys
import os
import shutil

# Scripts python
TOOLSPATH = os.path.dirname(os.path.abspath(__file__))+"/../../Z01-tools/"
sys.path.insert(0,TOOLSPATH+"scripts/")
from testeVHDL import vhdlScript
from report import report

class tstLogiComb(object):

    def __init__(self):
        self.pwd = os.path.dirname(os.path.abspath(__file__))
        self.rtl = os.path.join(self.pwd,'src/rtl/')
        self.tst = os.path.join(self.pwd,'tests/')
        self.log = os.path.join(TOOLSPATH,'log','logC.xml')
        self.work = vhdlScript(self.log)

    def addSrc(self, work):
        work.addSrc(self.rtl)

    def addTst(self, work):
        work.addTstConfigFile(self.tst)

    def add(self, work):
        self.addSrc(work)
        self.addTst(work)

    def head(self):
        logLogiComb("---------- Portas Logicas            ")
        logLogiComb("---------- 03-Logica-Combinacional   ")

if __name__ == "__main__":
    tstLogiComb = tstLogiComb()
    tstLogiComb.add(tstLogiComb.work)
    tstLogiComb.work.run()
    print("===================================================")
    print("Reporting test result to server")
    r = report(tstLogiComb.log, 'C')
    r.hw()
    r.send()
    print("===================================================")



