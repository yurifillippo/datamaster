import re


class validaCpf:
    def validar_cpf(self, cpf):
        #Remove non-numeric characters from CPF
        cpf = re.sub(r'\D', '', cpf)

        #Check if the CPF has 11 digits
        if len(cpf) != 11:
            return False

        #Check if all digits are the same
        if cpf == cpf[0] * 11:
            return False

        #Calculate check digits
        soma = 0
        for i in range(9):
            soma += int(cpf[i]) * (10 - i)
        digito1 = 11 - (soma % 11)
        if digito1 > 9:
            digito1 = 0

        soma = 0
        for i in range(10):
            soma += int(cpf[i]) * (11 - i)
        digito2 = 11 - (soma % 11)
        if digito2 > 9:
            digito2 = 0

        # Check if the check digits are correct
        return cpf[-2:] == f'{digito1}{digito2}'
