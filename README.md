# 🤝 Mentorship Escrow Smart Contract

A simple Ethereum smart contract that facilitates trustless mentorship engagements. Funds are locked in escrow and released only when **both the mentor and mentee confirm** that the mentorship was successfully completed.

---

## Prove of work --
**Contract Address--** Oxef8bba2ae6ca43ffb54b566586d1112638319fc0
![image]([Screenshot 2025-05-26 142745.png](https://github.com/Krishna957513/MentorshipEscrow/blob/main/Screenshot%202025-05-26%20142745.png))
## 🚀 Features

- ✅ Escrows payment from the mentee to be released upon mutual confirmation.
- 🔐 Funds are securely held in the contract until both parties agree.
- 🔁 Allows cancellation by mentee before the mentor confirms.
- 📄 Transparent status tracking and fund flow.

---

## 🧠 How It Works

1. **Deployment**: The mentee deploys the contract and funds it with ETH.
2. **Agreement**: The mentor address is set at deployment.
3. **Confirmation**: Both mentor and mentee call `confirmMentorshipComplete()` to signal successful completion.
4. **Payout**: Once both confirm, the contract automatically releases the escrowed funds to the mentor.
5. **Optional**: Mentee can cancel the mentorship if the mentor hasn’t confirmed.

---

## 🛠 Functions

| Function | Access | Description |
|---------|--------|-------------|
| `constructor(address _mentor)` | Mentee | Initializes the contract and funds it with ETH. |
| `confirmMentorshipComplete()` | Mentor or Mentee | Confirms completion; both must call for funds to release. |
| `cancelMentorship()` | Mentee | Cancels and refunds funds, only if mentor hasn’t confirmed. |
| `getStatus()` | Public | Returns the current contract status. |
| `receive()` | Public | Allows the contract to accept ETH. |

---

## ⚙️ Usage (Remix IDE)

1. Open [Remix](https://remix.ethereum.org/).
2. Create a new file called `MentorshipEscrow.sol` and paste the contract code.
3. Compile the contract.
4. Deploy it using the mentee’s wallet and send the mentorship fee as `value` (in wei).
5. Interact with the contract through the Remix UI to confirm and release funds.

---

## 🔐 Security Notes

- This contract assumes that both parties act honestly.
- Arbitration and dispute resolution are not implemented.
- Consider integrating timeouts or DAO-based arbitration for production use.

---

## 📄 License

MIT License

---

## 👨‍💻 Author

Created by [Ayush]  
Inspired by decentralized trust mechanisms.

