<html>
    <form action="Festivalier.php" method="POST" class="form_festi">
        <div>
            <label for="nom">Entrez votre NOM : </label>
            <input type="text" name="nom" id="name" required>
        </div>
        <div>
            <label for="prenom">Entrez votre Prénom : </label>
            <input type="text" name="prenom" id="surname" required>
        </div>
        <div>
            <label for="mail">Entrez votre adresse email : </label>
            <input type="email" name="mail" id="email" required>
        </div>
        <div>
            Vous souhaitez vous inscrire pour :
            <input type="checkbox" id="1j" name="1j">
            <label for="scales">1 jour</label>
            <input type="checkbox" id="2j" name="2j">
            <label for="scales">2 jours</label>
            <input type="checkbox" id="3j" name="3j">
            <label for="scales">3 jours</label>
            <input type="checkbox" id="Tj" name="Tj">
            <label for="scales">Les 4 jours</label>
        </div>
        <div>
            <input type="submit" value="Se pré-inscrire">
        </div>
    </form>
</html>