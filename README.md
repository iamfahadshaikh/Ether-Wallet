# Ether-Wallet
This is a small project which provides a platform to send and receive text ethers between two accounts. 

To run the project, you will need some software and some libraries; 
1. Your system must have Ganache installed.
2. You must have a web3 library (I have also provided the link in the code).

Execution:
1. Compile the wallet.sol code in a Remix IDE.
2. Copy the ABI code provided by the IDE.
3. Replace the ABI code in the index.html file.
4. Start Ganache.
5. Link Ganache with Remix IDE.
6. Deploy the wallet.sol code with any one account (this account is now the owner of the contract/deployer of the contract)
7. Copy one of the accounts from the ganache and replace it in the code.
8. Copy the contract address and replace it in the code.
9. Refresh the index.html page from the browser, now the project is ready.
10. Carry out the tasks such as sending and receiving the test ethers in contracts and in between the accounts.

This is a very basic code that is used to understand how crypto transactions between accounts work, also people can understand the transaction fees/gas fees required for the sending and receiving of ethers.
