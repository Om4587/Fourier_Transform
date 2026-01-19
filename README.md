# Fourier Transform – Conceptual, Mathematical & Visual Analysis

## Author
**Om Prakash Das**

---

## 📌 Overview
This repository presents my **conceptual, mathematical, and visual analysis** of the Fourier Transform.  
The Fourier Transform is a fundamental tool used to analyze signals by transforming them from the **time domain** into the **frequency domain**.

---

## 🔍 What is the Fourier Transform?
The Fourier Transform expresses a function as a sum of sinusoidal components of different frequencies.

\[
F(\omega) = \int_{-\infty}^{\infty} f(t)\, e^{-i\omega t} \, dt
\]

Instead of asking *“What is the signal doing at time t?”*,  
it answers *“Which frequencies exist in the signal and how strong they are?”*

---

## 🖼️ Figure 1: Time Domain vs Frequency Domain


![Time vs Frequency](figures/time_vs_frequency.png)

### Explanation
- **Time Domain**: Shows how the signal amplitude changes over time.
- **Frequency Domain**: Shows which frequencies make up the signal.
- A complex-looking time signal often becomes **simple and structured** in frequency form.

---

## 🧠 Decomposition into Sinusoids

![Signal Decomposition](figures/signal_decomposition.png)

### Explanation
- Any signal can be represented as a **sum of sine and cosine waves**.
- The Fourier Transform mathematically performs this decomposition.
- Each frequency component has:
  - Amplitude (strength)
  - Phase (shift)

---

## 📊 Figure 2: Frequency Spectrum

![Frequency Spectrum](figures/frequency_spectrum.png)

### Explanation
- Peaks indicate **dominant frequencies**.
- Taller peaks = stronger contribution.
- Noise often appears as small, spread-out components.

---

## 📐 Figure 3: Square Wave and Harmonics

![Square Wave Harmonics](figures/square_wave_harmonics.png)

### Explanation
- A square wave is composed of:
  - Fundamental frequency
  - Odd harmonics (3rd, 5th, 7th, ...)
- This explains why sharp edges require **high-frequency components**.
- Demonstrates why bandwidth matters in real systems.

---

## ⏱️ Time–Frequency Tradeoff

![Spectrogram](figures/spectrogram.png)

### Explanation
- Long signals → better frequency resolution
- Short signals → better time resolution
- This limitation motivates tools like:
  - Short-Time Fourier Transform (STFT)
  - Wavelet Transform

---

## ⚙️ Discrete Fourier Transform (DFT)
For sampled data, we use the Discrete Fourier Transform:

\[
X[k] = \sum_{n=0}^{N-1} x[n] e^{-i2\pi kn/N}
\]

The **Fast Fourier Transform (FFT)** computes this efficiently and is widely used in practice.

---

## 🌍 Applications
- Signal and image processing  
- Communication systems  
- Electrical and control engineering  
- Quantum mechanics  
- Data science and machine learning  

---

## 🚀 Conclusion
The Fourier Transform is not just a mathematical operation but a **powerful way of understanding reality through frequencies**.  
Visualizing it makes the abstract mathematics intuitive and reveals the hidden structure of signals.

--- Still Learning
