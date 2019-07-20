#! /bin/bash

NETWORK_ID=${1:-66}
DB_PATH=${2:-data}

# echo "$NETWORK_ID $DB_PATH"

rpc_pid= ps -A | grep rpc | grep -v grep | head -n 1 | awk '{print $1}'
if [ $rpc_pid ]; then
    kill $rpc_pid
fi

ganache-cli \
--db="$DB_PATH" \
--networkId="$NETWORK_ID" \
--account="0xdc1dfb1ba0850f1e808eb53e4c83f6a340cc7545e044f0a0f88c0e38dd3fa40d,1000000000000000000000000"  \
--account="0xb7a0c9d2786fc4dd080ea5d619d36771aeb0c8c26c290afd3451b92ba2b7bc2c,1000000000000000000000000"  \
--account="0x1c6a05d6d52954b74407a62f000450d0a748d26a7cc3477cd7f8d7c41d4992ce,1000000000000000000000000"  \
--account="0x0d1472f8bc07877bf06c8f4cfe3ea8a7dcd77f0929b3aab04047004f2318047a,1000000000000000000000000"  \
--account="0x13442050b433eef764b0409fade4c3cb86521034f2fa8b59e49c6226382ae5b1,1000000000000000000000000"  \
--account="0xafd4cd91a76745e11f8fd6262997fb20deef0cc3a9f3b9d77c157906b9cf52c6,1000000000000000000000000"  \
--account="0xfa107bafe7be125d4e4a89fad1217405bdf3aeb2f1f18ccb0df8d35c35ef20d9,1000000000000000000000000"  \
--account="0x91c689d4ad56feb3b5c8b405bfc711b4dbae75be01936a2490562c480ec4f586,1000000000000000000000000"  \
--account="0xa6553a3cbade744d6c6f63e557345402abd93e25cd1f1dba8bb0d374de2fcf4f,1000000000000000000000000"  \
--account="0x95b0a982c0dfc5ab70bf915dcf9f4b790544d25bc5e6cff0f38a59d0bba58651,1000000000000000000000000"  \
--unlock 0 \
--unlock 1 \
--unlock 2 \
--unlock 3 \
--unlock 4 \
--unlock 5 \
--unlock 6 \
--unlock 7 \
--unlock 8 \
--unlock 9