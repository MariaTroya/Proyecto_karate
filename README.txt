Ejercicio 2 - Karate.

# María Magdalena Troya Iriarte

1. Prerequisitos:

    - Sistema Operativo Windows 10
    - IDE IntelliJ version 2024.1
    - Gradle 7.6 --->agregar en la variable de entorno
    - JDK versión 1.8 --->agregar en la variable de entorno

2. Instrucciones para ejecutar los test
      2.1. Abrir el IDE IntellijIdea
      2.2. Ingresar en la opción File y abrir el proyecto
      2.3. Esperar unos minutos para que se descargen las despendencias (gradle)
      2.4. Ubicarse y ejecutar la clase \demoblaze-karate\src\test\java\user\RunnerTests.java
      2.5. Se ejecutaran los features en paralelo.- El valor username_value se mantiene con un valor no existente en caso de una segunda ejecución del signup.feature se debe de modificar.
      2.6. Los escenarios tanto https://api.demoblaze.com/login  como https://api.demoblaze.com/signup consume los datos outline.
      2.7. Una vez finalizada la ejecución se puede visualizar los resulatdos en el reporte propio de Karate, para visualizarlo ubicarse en la ruta /build/karate-reports/karate-summary.html
      2.8. Los resultados de las pruebas ejecutas se ubican en la carpeta Evidencias.

     

