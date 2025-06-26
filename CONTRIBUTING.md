# Contributing to oapi-cli

Thank you for considering contributing to **oapi-cli**!  
We welcome contributions from everyone—whether it's reporting bugs, writing tests, improving documentation, or suggesting new features.

---

## 🧑‍💻 How to Contribute

### 🐛 Bug Reports

- Clearly describe the issue.
- Include reproduction steps and environment details.
- If possible, provide a minimal failing example.

### ✨ Feature Requests

- Explain your use case.
- Provide context and expected behavior.
- Be open to feedback or refinement.

### 📘 Documentation

- Improvements to `README.md`, `variable.md`, or command examples are always helpful.
- Keep the tone consistent with other OUTSCALE projects.

### 🧪 Tests

- Adding tests to cover more scenarios is appreciated.

---

## 📦 Pull Requests

Please follow these guidelines:

- Keep changes focused and scoped to a single purpose.
- Run the CLI and validate behavior before submitting.
- Use clear and descriptive commit messages.
- Link related issues in your PR description.

> ⚠️ **Do not modify SDK-generated code manually. See below.**

---

## 🧠 Hacking Outscale SDK

The SDK used in this project is **generated automatically** using [Outscale's COGNAC](https://github.com/outscale/COGNAC) tool and the [osc-api](https://github.com/outscale/osc-api) specification.

This means:

- **Pull requests that change the generated SDK code will be overwritten** the next time we regenerate from `osc-api`.
- If you want to improve the underlying SDK, consider opening an issue or PR directly in [osc-sdk-c](https://github.com/outscale/osc-sdk-c) instead.

We **do** welcome contributions such as:

- Feature suggestions
- CLI examples
- Documentation improvements
- Tests and usage validation

---

## Questions?

If you have any questions or need help, feel free to [open an issue](../../issues) or reach out to the maintainers on [Discord](https://discord.gg/HUVtY5gT6s).

