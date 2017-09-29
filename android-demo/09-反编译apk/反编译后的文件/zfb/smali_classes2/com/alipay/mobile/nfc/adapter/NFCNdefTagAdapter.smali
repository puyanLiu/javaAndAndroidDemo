.class Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;
.super Ljava/lang/Object;
.source "NFCNdefTagAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/nfc/adapter/NFCAdapter;


# instance fields
.field private a:Landroid/nfc/tech/Ndef;

.field private b:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 88
    :try_start_0
    const-string/jumbo v1, "alipayaction/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 90
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_1

    .line 94
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nfc/info/NfcType;

    const-string/jumbo v1, "Tag"

    const-string/jumbo v3, "Ndef"

    const-string/jumbo v4, "*"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/alipay/mobile/nfc/info/NfcType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 92
    :cond_1
    aget-object v4, v1, v0

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/nfc/exception/NFCException;

    const-string/jumbo v1, "invalid url format"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/exception/NFCException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 133
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/nfc/exception/NFCException;

    const-string/jumbo v1, "exception when close tag"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/exception/NFCException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 124
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/nfc/exception/NFCException;

    const-string/jumbo v1, "exception when connect tag"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/exception/NFCException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->isConnected()Z

    move-result v0

    return v0
.end method

.method public preLoad(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-static {}, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/nfc/exception/NFCException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "do not support NFC on sdk version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/exception/NFCException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    const-string/jumbo v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 28
    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lcom/alipay/mobile/nfc/exception/NFCException;

    const-string/jumbo v1, "this tag not support Ndef ?!"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/exception/NFCException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    const-string/jumbo v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_4

    array-length v1, v0

    if-eqz v1, :cond_4

    .line 35
    aget-object v0, v0, v3

    check-cast v0, Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-eqz v1, :cond_3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->b:[B

    iget-object v1, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->b:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "alipays-beam"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/nfc/info/NfcType;

    const-string/jumbo v1, "Beam"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/info/NfcType;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_2
    invoke-static {v1, p1}, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alipay/mobile/nfc/exception/NFCException;

    const-string/jumbo v1, "invalid ndef message"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/exception/NFCException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_4
    new-instance v0, Lcom/alipay/mobile/nfc/exception/NFCException;

    const-string/jumbo v1, "can not get ndef message"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/exception/NFCException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs read([B)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    return-object v0
.end method

.method public transceive([B)[B
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public write([B)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    .line 45
    invoke-static {}, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    if-eqz v2, :cond_1

    .line 46
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v4, v1, [B

    iget-object v5, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->b:[B

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 47
    new-instance v3, Landroid/nfc/NdefRecord;

    sget-object v4, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v5, v1, [B

    invoke-direct {v3, v0, v4, v5, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 49
    new-instance v4, Landroid/nfc/NdefMessage;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-direct {v4, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v2, v4}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 55
    iget-object v2, p0, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;->a:Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v0, v1

    goto :goto_0
.end method
