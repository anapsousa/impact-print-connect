# PrintImpact Connect

A web application that coordinates 3D printing volunteers to manufacture wheelchair parts for children in Portugal.

**URL**: https://www.3dcomproposito.pt

## Tech Stack

- Vite
- TypeScript
- React
- shadcn-ui
- Tailwind CSS

## Running Locally

```sh
# Clone the repository
git clone <YOUR_GIT_URL>

# Navigate to the project directory
cd <YOUR_PROJECT_NAME>

# Install dependencies
npm i

# Start the development server
npm run dev
```

## Notifying Volunteers When Allocated a Part

The app does **not** use an email API. After allocating a part to a volunteer:

- **From the allocation dialog:** After clicking "Atribuir", the dialog shows the volunteer's **portal link**. Use **"Copiar link"** to copy it and **"Abrir email"** to open your default email client with a pre-filled message.
- **From the contributors list:** Each row has a **link icon** (🔗). Click it to copy that volunteer's portal link and paste it into an email, WhatsApp, etc.

Portal link format: **https://www.3dcomproposito.pt/portal?token=...**

## Deployment

The project is deployed on Vercel. Pushing to the repository automatically triggers a new deployment.

- Domain: https://www.3dcomproposito.pt
