plugins {
    // საშუალებას აძლევს Gradle-ს JDK 21 ჩამოტვირთოს (Foojay), თუ ლოკალურად არ არის — IDE-საც უშლის ხელს.
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.9.0"
}

rootProject.name = "ipove-ai"

include("backend")
