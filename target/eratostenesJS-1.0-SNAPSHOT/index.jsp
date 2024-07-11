<!DOCTYPE html>
<html>
<head>
    <title>Calculadora de Números Primos</title>
</head>
<body>
<h1>Calculadora de Números Primos</h1>
<br/>
<div>
    <label for="limit">Limite:</label>
    <input type="number" id="limit" min="2" required>
    <button onclick="calculatePrimes()">Calcular</button>
</div>

<span id="prime-results"></span>

<script>
    function findPrimes(limit) {
        var isComposite = new Array(limit + 1).fill(false);
        var primes = [];

        for (var i = 2; i <= limit; i++) {
            if (!isComposite[i]) {
                primes.push(i);

                for (var j = i * i; j <= limit; j += i) {
                    isComposite[j] = true;
                }
            }
        }

        return primes;
    }

    function calculatePrimes() {
        var limitInput = document.getElementById("limit");
        var limit = parseInt(limitInput.value);
        var primes = findPrimes(limit);

        var resultsDiv = document.getElementById("prime-results");
        resultsDiv.innerHTML = "Números primos até " + limit + ": " + primes.join(", ");
    }
</script>
</body>
</html>
