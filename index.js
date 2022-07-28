const algosdk = require('algosdk');
const createAccount = function() {
        try {
        const myaccount = algosdk.generateAccount();
                console.log("Account Address = " + myaccount.addr);
                let account_mnemonic = algosdk.secretKeyToMnemonic(myaccount.sk);
        console.log("Account Mnemonic = "+ account_mnemonic);
        console.log("Account created. Save off Mnemonic and address");
        console.log("Add funds to account using the TestNet Dispenser: ");
        console.log("https://dispenser.testnet.aws.algodev.network/ ");
        return myaccount;
    }
    catch (err) {
        console.log("err", err);
    }
};

createAccount();

/* First test account
   Account Address = D7QJEHMPNGK6CVW5MZF3KT3Z5RXYPGEN2VGS6LN4VQ6ZD6T6FZR4R6CTGU
   Account Mnemonic = web spend drip holiday essence multiply hat color joke prison rubber dust giraffe verify gym castle design snake alert puzzle ghost label candy about weird
   Second test account:
   Account Address = TBZHBPL54XZBY7WFOAL37R2TMHQYFIYE2JQ5PWNR5QSY7HRNNCIECKUW5Q
   Account Mnemonic = void owner layer today brisk cook oppose key bar boy menu nephew time exotic eyebrow misery scrap school problem smile strategy attitude voice absent jump
 */
/*
async function createZAN() {

    try {

        // Connect your client
        const algodToken = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';
        const algodServer = "http://localhost";
        const algodPort = 4001;
        let algodClient = new algosdk.Algodv2(algodToken, algodServer, algodPort);
        let myAccount = algosdk.mnemonicToSecretKey("web spend drip holiday essence multiply hat color joke prison rubber dust giraffe verify gym castle design snake alert puzzle ghost label candy about weird");
        let accountInfo = await algodClient.accountInformation(myAccount.addr).do();
        console.log("Account balance: %d microAlgos", accountInfo.amount);

        let params = await algodClient.getTransactionParams().do();
        let txn = algosdk.makeAssetCreateTxnWithSuggestedParamsFromObject({
                from: myAccount.addr,
                note: new Uint8Array(),
                total: BigInt(1000000000000000000),
                decimals: 6,
                defaultFrozen: false,
                manager: myAccount.addr,
                unitName: "ZAN",
                assetName: "Zazzan",
                assetURL: "https://zazzan.org",
                suggestedParams: params
            });
        // Sign the transaction
        let signedTxn = txn.signTxn(myAccount.sk);
        let txId = txn.txID().toString();
        console.log("Signed transaction with txID: %s", txId);
        // Submit the transaction
        await algodClient.sendRawTransaction(signedTxn).do();

        // Wait for confirmation
        let confirmedTxn = await algosdk.waitForConfirmation(algodClient, txId, 4);
        //Get the completed Transaction
        console.log("Transaction " + txId + " confirmed in round " + confirmedTxn["confirmed-round"]);
        // let mytxinfo = JSON.stringify(confirmedTxn.txn.txn, undefined, 2);
        // console.log("Transaction information: %o", mytxinfo);
        let string = new TextDecoder().decode(confirmedTxn.txn.txn.note);
        console.log("Note field: ", string);
        accountInfo = await algodClient.accountInformation(myAccount.addr).do();
        console.log("Transaction Amount: %d microAlgos", confirmedTxn.txn.txn.amt);        
        console.log("Transaction Fee: %d microAlgos", confirmedTxn.txn.txn.fee);
        console.log("Account balance: %d microAlgos", accountInfo.amount);
    }
    catch (err) {
        console.log("err", err);
    }
};

createZAN();
*/
