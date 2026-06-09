# Configuração de Ambiente de Desenvolvimento

Este repositório contém os arquivos de script para a configuração automática do ambiente de desenvolvimento em macOS e Windows. As ferramentas instaladas incluem Git, Visual Studio Code, Docker, Discord, JetBrains Toolbox, terminais específicos do sistema e as configurações para o template de commits.

## Estrutura do Repositório

```text
.
├── windows/
│   └── script.ps1
├── mac_os/
│   └── script.sh
└── README.md
```

## Diretórios Disponíveis

* `mac_os/`: Diretório contendo o script bash (`script.sh`) para macOS. Instala o Homebrew, Ghostty, outras ferramentas essenciais e configura o Git.
* `windows/`: Diretório contendo o script PowerShell (`script.ps1`) para Windows. Utiliza o `winget` para instalar o Warp, outras ferramentas essenciais e configura o Git.

## Preparação

Antes de executar os scripts, edite os arquivos e altere as variáveis de identificação para os seus dados reais:

**No arquivo `mac_os/script.sh`:**
```bash
developerName="O Seu Nome"
developerEmail="o.seu.email@exemplo.com"
```

**No arquivo `windows/script.ps1`:**
```powershell
$gitUserName = "O Seu Nome"
$gitUserEmail = "o.seu.email@exemplo.com"
```

## Como Executar

### macOS

1. Abra a aplicação Terminal.
2. Navegue até a pasta raiz deste repositório e, em seguida, entre no diretório `mac_os`:
   ```bash
   cd mac_os
   ```
3. Conceda permissão de execução ao script:
   ```bash
   chmod +x script.sh
   ```
4. Execute o script:
   ```bash
   ./script.sh
   ```

### Windows

1. Clique no menu Iniciar, digite `PowerShell`, clique com o botão direito sobre o resultado e selecione **Executar como administrador**.
2. Navegue até a pasta raiz deste repositório e, em seguida, entre no diretório `windows`:
   ```powershell
   cd windows
   ```
3. Altere a política de execução temporariamente para permitir a execução do script:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
   ```
4. Confirme e execute o script:
   ```powershell
   .\script.ps1
   ```
   
