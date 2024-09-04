Essa POC ilustra diferentes métodos de navegação em SwiftUI, mostrando como podemos evitar memory leaks em cada abordagem. 
Cada exemplo segue boas práticas de gerenciamento de estado e navegação, garantindo que o ARC possa desalocar a memória quando apropriado.

Você pode testar cada exemplo e observar no console se as mensagens de desalocação aparecem corretamente, indicando que não há memory leaks.

--- 

### Explicação do Código:

1. **MainContentView:**
   - Esta View principal usa um `TabView` para combinar as três abordagens de navegação (`SafeContentView`, `StackContentView`, e `EnvContentView`) em uma interface com abas.
   - Cada aba é configurada com um ícone e um rótulo (`Label`), que torna a navegação entre as diferentes abordagens simples e intuitiva.

2. **SafeContentView:**
   - Usa `NavigationView` e `NavigationLink` de forma segura, sem criar memory leaks.

3. **StackContentView:**
   - Demonstra o uso de `NavigationStack` para gerenciar a navegação sem memory leaks.

4. **EnvContentView:**
   - Usa `@EnvironmentObject` para compartilhar estado global entre as Views, garantindo que não haja referências fortes indesejadas.

### Como Usar:

- Ao rodar o aplicativo, você verá uma barra de abas na parte inferior da tela.
- Navegue entre as três abas para experimentar diferentes abordagens de navegação.
- No console, observe as mensagens de desalocação, confirmando que os ViewModels e as Views estão sendo desalocados corretamente, sem causar memory leaks.

Essa configuração integrada com `TabView` permite que você compare diretamente as diferentes abordagens de navegação e veja como evitar problemas de memory leaks em SwiftUI.
