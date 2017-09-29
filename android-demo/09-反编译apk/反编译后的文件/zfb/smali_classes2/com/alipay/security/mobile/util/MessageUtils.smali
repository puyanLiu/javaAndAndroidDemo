.class public Lcom/alipay/security/mobile/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toFinalChallenge(Lcom/alipay/fido/message/FinalChallengeParams;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 33
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 39
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_0
    throw v0

    .line 39
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static toFinalChallengeParams(Ljava/lang/String;)Lcom/alipay/fido/message/FinalChallengeParams;
    .locals 4

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 58
    const/16 v0, 0x8

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 60
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/FinalChallengeParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    throw v0

    .line 65
    :catchall_1
    move-exception v0

    goto :goto_0
.end method
