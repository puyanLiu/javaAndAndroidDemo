.class public final Lnet/lingala/zip4j/crypto/a;
.super Ljava/lang/Object;
.source "AESDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/b;


# instance fields
.field private a:Lnet/lingala/zip4j/model/g;

.field private b:Lnet/lingala/zip4j/crypto/engine/a;

.field private c:Lnet/lingala/zip4j/crypto/PBKDF2/a;

.field private final d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:I

.field private m:[B

.field private n:[B

.field private o:I


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/g;[B[B)V
    .locals 6

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0x18

    const/4 v5, 0x2

    const/16 v1, 0x10

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v5, p0, Lnet/lingala/zip4j/crypto/a;->d:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->l:I

    .line 52
    iput v4, p0, Lnet/lingala/zip4j/crypto/a;->o:I

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "one of the input parameters is null in AESDecryptor Constructor"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/a;->a:Lnet/lingala/zip4j/model/g;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/a;->k:[B

    .line 63
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/a;->m:[B

    .line 64
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/a;->n:[B

    .line 65
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lnet/lingala/zip4j/model/g;

    if-nez v0, :cond_1

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid file header in init method of AESDecryptor"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lnet/lingala/zip4j/model/g;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/g;->m()Lnet/lingala/zip4j/model/a;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid aes extra data record - in init method of AESDecryptor"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/a;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid aes key strength for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/a;->a:Lnet/lingala/zip4j/model/g;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v1, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    iput v1, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    const/16 v0, 0x8

    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->g:I

    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lnet/lingala/zip4j/model/g;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/g;->k()[C

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lnet/lingala/zip4j/model/g;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/g;->k()[C

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_4

    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "empty or null password provided for AES Decryptor"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iput v2, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    iput v2, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    const/16 v0, 0xc

    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->g:I

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    iput v3, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    iput v1, p0, Lnet/lingala/zip4j/crypto/a;->g:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lnet/lingala/zip4j/model/g;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/g;->k()[C

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lnet/lingala/zip4j/crypto/a;->a([B[C)[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    iget v2, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    iget v3, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_6

    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid derived key"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v1, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/a;->h:[B

    iget v1, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/a;->i:[B

    new-array v1, v5, [B

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/a;->j:[B

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/a;->h:[B

    iget v2, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/a;->i:[B

    iget v3, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    iget v2, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/a;->j:[B

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->j:[B

    if-nez v0, :cond_7

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid derived password verifier for AES"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->j:[B

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Wrong Password for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/a;->a:Lnet/lingala/zip4j/model/g;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_8
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/a;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/a;->h:[B

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/engine/a;-><init>([B)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/a;->b:Lnet/lingala/zip4j/crypto/engine/a;

    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/a;

    const-string/jumbo v1, "HmacSHA1"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/a;->c:Lnet/lingala/zip4j/crypto/PBKDF2/a;

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->c:Lnet/lingala/zip4j/crypto/PBKDF2/a;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/a;->i:[B

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/a;->b([B)V

    .line 66
    return-void

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a([B[C)[B
    .locals 3

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/c;

    const-string/jumbo v1, "HmacSHA1"

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/c;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 169
    new-instance v1, Lnet/lingala/zip4j/crypto/PBKDF2/b;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/b;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/c;)V

    .line 170
    iget v0, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    iget v2, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, p2, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/b;->a([CI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lnet/lingala/zip4j/crypto/a;->g:I

    return v0
.end method

.method public final a([BII)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->b:Lnet/lingala/zip4j/crypto/engine/a;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "AES not initialized properly"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, p2

    .line 137
    :goto_0
    add-int v0, p2, p3

    if-ge v2, v0, :cond_3

    .line 138
    add-int/lit8 v0, v2, 0x10

    add-int v3, p2, p3

    if-gt v0, v3, :cond_1

    const/16 v0, 0x10

    :goto_1
    :try_start_0
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->o:I

    .line 141
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->c:Lnet/lingala/zip4j/crypto/PBKDF2/a;

    iget v3, p0, Lnet/lingala/zip4j/crypto/a;->o:I

    invoke-virtual {v0, p1, v2, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/a;->a([BII)V

    .line 142
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->m:[B

    iget v3, p0, Lnet/lingala/zip4j/crypto/a;->l:I

    const/4 v4, 0x0

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    const/4 v4, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x2

    shr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x3

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/4 v3, 0x7

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/16 v3, 0x9

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/16 v3, 0xa

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/16 v3, 0xb

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/16 v3, 0xc

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/16 v3, 0xd

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/16 v3, 0xe

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    const/16 v3, 0xf

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    .line 143
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->b:Lnet/lingala/zip4j/crypto/engine/a;

    iget-object v3, p0, Lnet/lingala/zip4j/crypto/a;->m:[B

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/a;->n:[B

    invoke-virtual {v0, v3, v4}, Lnet/lingala/zip4j/crypto/engine/a;->a([B[B)I

    move v0, v1

    .line 145
    :goto_2
    iget v3, p0, Lnet/lingala/zip4j/crypto/a;->o:I

    if-ge v0, v3, :cond_2

    .line 146
    add-int v3, v2, v0

    add-int v4, v2, v0

    aget-byte v4, p1, v4

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/a;->n:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    :cond_1
    add-int v0, p2, p3

    sub-int/2addr v0, v2

    goto :goto_1

    .line 149
    :cond_2
    iget v0, p0, Lnet/lingala/zip4j/crypto/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->l:I
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    add-int/lit8 v0, v2, 0x10

    move v2, v0

    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v0

    throw v0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_3
    return p3
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/a;->k:[B

    .line 191
    return-void
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->c:Lnet/lingala/zip4j/crypto/PBKDF2/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/a;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->k:[B

    return-object v0
.end method
