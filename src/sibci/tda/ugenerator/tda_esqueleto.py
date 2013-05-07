from templer.core.base import BaseTemplate

class TdaEsqueleto(BaseTemplate):
    _template_dir = 'plantilla/tda_esqueleto'
    summary = "Esqueleto basico de una app estandar de TDA"
    help = """
Esto genera el codigo necesario de un aplicativo TDA
"""
    category = "TDA"
    required_templates = []
    default_required_structures = ['estructura_tda',]
    use_cheetah = True

