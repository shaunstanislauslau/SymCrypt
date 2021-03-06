        TTL  "SymCryptWipe"
;++
;
; Copyright (c) Microsoft Corporation. Licensed under the MIT license.
;
; Secure wipe
;
;--

#include "ksarm64.h"

        TEXTAREA

        EXTERN  memset

        SUBT  "SymCryptWipe"
;VOID
;SYMCRYPT_CALL
;SymCryptWipe( _Out_writes_bytes_( cbData )   PVOID  pbData,
;                                       SIZE_T cbData )


        LEAF_ENTRY SymCryptWipeAsm

        ; we just jump to memset.
        ; this is enough to stop the compiler optimizing the memset away.

        mov     x2, x1
        mov     x1, #0
        b       memset

        LEAF_END SymCryptWipeAsm



        END
