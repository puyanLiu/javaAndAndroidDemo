.class public Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;
.super Ljava/lang/Object;
.source "NFCPbocAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/nfc/adapter/NFCAdapter;


# static fields
.field public static final a:[B

.field public static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private i:Lcom/alipay/nfc/tech/Iso7816$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->a:[B

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->b:[B

    .line 29
    new-array v0, v5, [B

    const/4 v1, 0x0

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 30
    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    .line 31
    aput-byte v3, v0, v3

    const/4 v1, 0x1

    aput-byte v1, v0, v4

    .line 29
    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->c:[B

    .line 33
    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->d:[B

    .line 36
    new-array v0, v5, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->e:[B

    .line 40
    new-array v0, v4, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->f:[B

    .line 44
    new-array v0, v4, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->g:[B

    .line 48
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->h:[B

    .line 20
    return-void

    .line 22
    :array_0
    .array-data 1
        0x31t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data

    .line 27
    nop

    :array_1
    .array-data 1
        0x10t
        0x1t
    .end array-data

    .line 33
    nop

    :array_2
    .array-data 1
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x5at
        0x54t
    .end array-data

    .line 36
    :array_3
    .array-data 1
        0x41t
        0x50t
        0x31t
        0x2et
        0x57t
        0x48t
        0x43t
        0x54t
        0x43t
    .end array-data

    .line 40
    nop

    :array_4
    .array-data 1
        0x50t
        0x41t
        0x59t
        0x2et
        0x50t
        0x41t
        0x53t
        0x44t
    .end array-data

    .line 44
    :array_5
    .array-data 1
        0x50t
        0x41t
        0x59t
        0x2et
        0x54t
        0x49t
        0x43t
        0x4ct
    .end array-data

    .line 48
    :array_6
    .array-data 1
        0x53t
        0x55t
        0x58t
        0x49t
        0x4et
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 99
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
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 90
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
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    return v0
.end method

.method public preLoad(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 109
    const-string/jumbo v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 110
    invoke-static {v0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/alipay/mobile/nfc/exception/NFCException;

    const-string/jumbo v1, "not IsoDep tag"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/exception/NFCException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;-><init>(Landroid/nfc/tech/IsoDep;)V

    iput-object v1, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->connect()V

    .line 121
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nfc/info/NfcType;

    invoke-direct {v1}, Lcom/alipay/mobile/nfc/info/NfcType;-><init>()V

    .line 122
    const-string/jumbo v2, "card"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nfc/info/NfcType;->setFilterId(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v2, "IsoDep"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nfc/info/NfcType;->setTechId(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-virtual {v2, v3, v3}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readRecord(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    const/16 v3, 0x4f

    invoke-virtual {v2, v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes(B)[B

    move-result-object v2

    .line 129
    if-eqz v2, :cond_2

    .line 130
    iget-object v3, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    .line 131
    invoke-virtual {v3, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-static {v2}, Lcom/alipay/mobile/nfc/Util;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nfc/info/NfcType;->setAppId(Ljava/lang/String;)V

    .line 138
    :cond_2
    invoke-static {v0}, Lcom/alipay/nfc/card/pboc/PbocCard;->load(Landroid/nfc/tech/IsoDep;)Lcom/alipay/nfc/card/pboc/PbocCard;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Lcom/alipay/nfc/card/pboc/PbocCard;->convertCardInfo()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    .line 141
    const-string/jumbo v2, "cardinfo"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 143
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardTypeEnum;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nfc/info/NfcType;->setFilterId(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getBusi_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nfc/info/NfcType;->setBizId(Ljava/lang/String;)V

    .line 147
    :cond_3
    const-string/jumbo v0, "nfc_type"

    invoke-virtual {v1}, Lcom/alipay/mobile/nfc/info/NfcType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Lcom/alipay/mobile/nfc/info/NfcType;->toString()Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->close()V

    .line 151
    return-object v1
.end method

.method public varargs read([B)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 158
    const-class v2, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    return-object v0
.end method

.method public readRecord(II)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 77
    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 78
    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 79
    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 83
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public varargs selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 66
    const/16 v2, -0x5c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 67
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 69
    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 72
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public transceive([B)[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;->i:Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-virtual {v0, p1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs write([B)Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method
