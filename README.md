# 🤖 Agente Conversacional WhatsApp/Telegram con n8n e IA

Agente de atención al cliente multicanal con procesamiento de voz e imágenes, integrado a **WhatsApp** y **Telegram** mediante **n8n**. Implementa RAG (Retrieval-Augmented Generation) para consulta inteligente de bases de conocimiento empresariales.

---

## ✨ Características

- **Multicanal**: Integración simultánea con WhatsApp y Telegram
- **Multimodal**: Procesamiento de mensajes de texto, voz e imágenes
- **RAG**: Consulta inteligente de documentos con bases vectoriales (Supabase / Pinecone)
- **Texto a Voz**: Respuestas de audio generadas con ElevenLabs TTS
- **Automatización**: Flujos de trabajo orquestados con n8n

---

## 🛠️ Stack

| Tecnología | Uso |
|---|---|
| n8n | Orquestación de flujos / automatización |
| WhatsApp API | Canal de mensajería principal |
| Telegram Bot API | Canal de mensajería secundario |
| Supabase / Pinecone | Almacenamiento vectorial para RAG |
| ElevenLabs TTS | Generación de respuestas de voz |
| LLM (OpenAI / compatible) | Motor de IA conversacional |

---

## 🏗️ Arquitectura

```
Usuario (WhatsApp/Telegram)
        ↓
      n8n (flujo de automatización)
        ↓
   Procesamiento de mensaje
   (texto / voz / imagen)
        ↓
   Consulta RAG → Base vectorial (Supabase/Pinecone)
        ↓
   LLM genera respuesta
        ↓
   [Opcional] ElevenLabs TTS → Audio
        ↓
   Respuesta al usuario
```

---

## 👤 Autor

**Jordan Pincay** — [linkedin.com/in/jpincayvinces](https://linkedin.com/in/jpincayvinces) · [j.pincayvinces@gmail.com](mailto:j.pincayvinces@gmail.com)
