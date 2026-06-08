# Configuração de Ambiente de Desenvolvimento

Este repositório contém os ficheiros de script para a configuração automática do ambiente de desenvolvimento em macOS e Windows. As ferramentas instaladas incluem Git, Visual Studio Code, Docker, Discord, JetBrains Toolbox, terminais específicos do sistema e as configurações para o template de commits.

## Ficheiros Disponíveis

* `script.sh`: Script bash para macOS. Instala o Homebrew, Ghostty, outras ferramentas essenciais e configura o Git.
* `script.ps1`: Script PowerShell para Windows. Utiliza o `winget` para instalar o Warp, outras ferramentas essenciais e configura o Git.

## Preparação

Antes de executar os scripts, edite os ficheiros e altere as variáveis de identificação para os seus dados reais:

**No ficheiro `script.sh`:**
```bash
developerName="O Seu Nome"
developerEmail="o.seu.email@exemplo.com"
```

**No ficheiro `script.ps1`:**
```powershell
$gitUserName = "O Seu Nome"
$gitUserEmail = "o.seu.email@exemplo.com"
```

## Como Executar

### macOS

1. Abra a aplicação Terminal.
2. Navegue até ao diretório onde o ficheiro `script.sh` foi guardado.
3. Conceda permissão de execução ao script:
   ```bash
   chmod +x script.sh
   ```
4. Execute o script:
   ```bash
   ./script.sh
   ```

### Windows

1. Clique no menu Iniciar, escreva `PowerShell`, clique com o botão direito sobre o resultado e selecione **Executar como administrador**.
2. Navegue até ao diretório onde guardou o ficheiro `script.ps1`.
3. Altere a política de execução temporariamente para permitir a execução do script:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
   ```
4. Confirme e execute o script:
   ```powershell
   .\script.ps1
   ```
