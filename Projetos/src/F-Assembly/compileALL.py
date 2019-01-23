#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Curso de Elementos de Sistemas
# Desenvolvido por: Rafael Corsi <rafael.corsi@insper.edu.br>
#
# Adaptado de :     Pedro Cunial   <pedrocc4@al.insper.edu.br>
#                   Luciano Soares <lpsoares@insper.edu.br>
# Data de criação: 07/2017

######################################################################
# Tools
######################################################################
from os.path import join, dirname
import sys, subprocess

ROOT_PATH = subprocess.Popen(
    ['git', 'rev-parse', '--show-toplevel'],
    stdout=subprocess.PIPE).communicate()[0].rstrip().decode('utf-8')
sys.path.insert(0, ROOT_PATH + '/Projetos/Z01-tools/scripts/')

from config import *
from assembler import assemblerAll, clearbin

def compileAllNotify(error, log):
    noti = notificacao('Compile all')

    if not error:
        noti.ok('\n Bem sucedido')
        return(0)
    else:
        noti.error('\n Falhou: {}'.format(log[-1]['name']))
        return(-1)

def compileAll(jar, nasm, hack):
    print("-------------------------")
    print("- Montando arquivos      ")
    print("-------------------------")

    # global path
    os.path.abspath(nasm)
    os.path.abspath(hack)

    print(" 1/2 Removendo arquivos .hack" )
    print("  - {}".format(hack))
    clearbin(hack)

    print(" 2/2 Gerando arquivos   .hack")
    print("  - {}".format(nasm))
    return assemblerAll(jar, nasm, hack, True)

if __name__ == "__main__":
    pwd = os.path.dirname(os.path.abspath(__file__))

    nasm = pwd+"/src/nasm/"
    hack = pwd+"/bin/hack/"

    error, log = compileAll(ASSEMBLER_JAR, nasm, hack)
    sys.exit(compileAllNotify(error, log))
