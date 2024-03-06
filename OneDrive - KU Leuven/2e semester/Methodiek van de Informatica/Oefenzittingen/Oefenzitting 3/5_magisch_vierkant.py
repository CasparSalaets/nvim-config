"""
Een n x n matrix is een magisch vierkant als de som van de elementen in elke rij, elke kolom en in de twee diagonalen
hetzelfde is.
Schrijf een programma dat gegeven een input van 16 getallen berekent of het over een magisch vierkant gaat.

Je mag de lijst hier direct in het geheugen plaatsen en hoeft deze dus niet in te lezen.

Tip: gebruik aparte for lussen om na te kijken of alle kolommen, rijen en diagonalen tot hetzelfde getal sommeren.

Voorbeelden van magische vierkanten:
[[2, 16, 13, 3], [11, 5, 8, 10], [7, 9, 12, 6], [14, 4, 1, 15]]
[[8, 1, 6], [3, 5, 7], [4, 9, 2]]

Voorbeelden van niet magische vierkanten:
[[2, 13, 16, 3], [11, 8, 15, 10], [6, 9, 1, 7], [14, 4, 12, 5]]
[[3, 5, 4], [1, 9, 8], [2, 6, 7]]
"""
magisch_vierkant =  [[2, 13, 16, 3], [11, 8, 15, 10], [6, 9, 1, 7], [14, 4, 12, 5]] # is geen magisch vierkant
som_eerste_rij = sum(magisch_vierkant[0])  
def test_magisch_vierkant():
    output = som_rijen() and som_kolommen() and som_hoofddiagonaal() and som_nevendiag()
    return output
    # for debug
    '''
    assert som_eerste_rij() == 34
    assert som_eerste_kolom() == 34
    assert som_hoofddiag() == 34
    assert som_nevendiag() == 34
    '''


def som_rijen():
    som_eerste_rij = sum(magisch_vierkant[0])
    som_rijen_gelijk = True
    
    for i in range(len(magisch_vierkant)):
        if sum(magisch_vierkant[i]) != som_eerste_rij:
            som_rijen_gelijk == False
    return som_rijen_gelijk

def som_kolommen():
    som_kolommen_gelijk = True
    for i in range(len(magisch_vierkant)):
        som = 0
        for j in range(len(magisch_vierkant)):
            som += int(magisch_vierkant[i][j])
        if som != som_eerste_rij:
            som_kolommen_gelijk = False
    return som_kolommen_gelijk


def som_hoofddiagonaal():
    som_hoofddiag_gelijk = True
    som_hoofddiag = 0
    for i in range(len(magisch_vierkant)):
        som_hoofddiag += magisch_vierkant[i][i]
    if som_hoofddiag != som_eerste_rij:
        som_hoofddiag_gelijk = False
    return som_hoofddiag_gelijk

def som_nevendiag():
    som_nevendiag_gelijk = True
    som_nevendiag = 0
    for i in range(len(magisch_vierkant)):
        som_nevendiag += magisch_vierkant[i][len(magisch_vierkant) - 1 - i]
    if som_nevendiag != som_eerste_rij:
        som_nevendiag_gelijk = False 
    return som_nevendiag_gelijk


print(magisch_vierkant)
print(test_magisch_vierkant())
