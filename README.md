# myapp

## PROMPT
Necesito que escribes el código completo para una aplicación de restaurante de estilo elegante llamada "La ROMA".

Requisitos técnicos y de arquitectura:

Gestión de estado: Usa la librería provider con un ChangeNotifier para manejar un modelo de datos global que contenga los colores del tema (fondo 0xFFFAFAFA, texto 0xFF333333 y detalles dorados 0xFFB07F49) y las URLs de las imágenes.

Tipografía: Usa el paquete google_fonts, específicamente la fuente "Playfair Display".

Estructura de archivos: El código debe estar modularizado. Usa un archivo main.dart para la configuración y una carpeta paginas/ para las vistas.

Navegación: Configura "Named Routes" (rutas nombradas) en el main.dart (/, /menu, /recomendaciones).

Buenas prácticas: Usa withAlpha() en lugar de withOpacity() para transparencias y asegúrate de agregar un errorBuilder en todos los widgets Image.network para manejar fallos de carga con un ícono de imagen rota.

Pantallas a desarrollar (en archivos separados):

Landing Page (landing_page.dart): Ruta /. Fondo color claro. Debe tener una imagen centrada, debajo el texto "La ROMA" (la palabra "La" en tamaño normal arriba a la izquierda y "ROMA" muy grande en negritas). Hasta abajo, un botón circular con borde dorado y un ícono de flecha que navegue hacia /menu.

Menú Principal (menu_principal.dart): Ruta /menu.

AppBar: Fondo transparente, ícono de menú tipo hamburguesa a la izquierda, título "La ROMA" al centro e ícono de usuario a la derecha.

Cuerpo: Un SingleChildScrollView. Hasta arriba, una imagen de cabecera rectangular (Stack) con un TextField de búsqueda sobrepuesto en la parte inferior de la imagen.

Contenido: Debajo de la búsqueda, una fila con 2 tarjetas de platillos cuadradas (mitad imagen arriba, textos abajo y un botón de flechita). Abajo de eso, una tarjeta alargada horizontal (imagen a la izquierda, nombre y precio a la derecha). Todas las flechitas de las tarjetas deben navegar a /recomendaciones.

BottomNavigationBar: Estilo fijo con fondo blanco y 5 íconos (inicio, canasta, ubicación, ticket, más opciones).

Detalle del Platillo (recomendaciones.dart): Ruta /recomendaciones.

AppBar: Fondo color dorado, flecha de retroceso blanca a la izquierda y el texto "La ROMA" en blanco al centro.

Cuerpo: Título "Recomendaciones", una imagen grande del platillo con bordes redondeados, un ícono de estrella dorada, el título del platillo ("Ensalada de Verano Roma") y un párrafo descriptivo en gris oscuro.

Botón: Hasta abajo, un ElevatedButton que ocupe todo el ancho, con fondo oscuro que diga "Añadir a carrito".

### WEB
<img width="1003" height="702" alt="image" src="https://github.com/user-attachments/assets/3555a04b-0d37-4e91-9183-6708f259bd87" />

<img width="1113" height="822" alt="image" src="https://github.com/user-attachments/assets/e3e64919-7a8c-4658-8e5c-896e56469462" />

<img width="1117" height="771" alt="image" src="https://github.com/user-attachments/assets/12d14519-e14f-4142-a525-2db0ff0e9938" />


### MOVIL

<img width="456" height="703" alt="image" src="https://github.com/user-attachments/assets/9041f3a4-c4c6-44b4-b899-51183bf5e057" />
<img width="414" height="697" alt="image" src="https://github.com/user-attachments/assets/6699e0e2-4d06-4076-a97a-314ff49756c4" />
<img width="405" height="692" alt="image" src="https://github.com/user-attachments/assets/a7528ac0-8539-4e70-a32f-d67cb38c8405" />
