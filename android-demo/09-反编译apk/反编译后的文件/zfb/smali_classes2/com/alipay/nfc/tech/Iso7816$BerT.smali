.class public final Lcom/alipay/nfc/tech/Iso7816$BerT;
.super Lcom/alipay/nfc/tech/Iso7816;
.source "Iso7816.java"


# static fields
.field public static final CLASS_ADO:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final CLASS_AID:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final CLASS_DFN:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final CLASS_PRI:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final CLASS_SFI:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public static final TMPL_FCI:B = 0x6ft

.field public static final TMPL_FCP:B = 0x62t

.field public static final TMPL_FMD:B = 0x64t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, -0x5b

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->CLASS_PRI:Lcom/alipay/nfc/tech/Iso7816$BerT;

    .line 172
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, -0x78

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->CLASS_SFI:Lcom/alipay/nfc/tech/Iso7816$BerT;

    .line 174
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, -0x7c

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->CLASS_DFN:Lcom/alipay/nfc/tech/Iso7816$BerT;

    .line 176
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, 0x61

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->CLASS_ADO:Lcom/alipay/nfc/tech/Iso7816$BerT;

    .line 178
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v1, 0x4f

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>(B)V

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$BerT;->CLASS_AID:Lcom/alipay/nfc/tech/Iso7816$BerT;

    .line 163
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>([B)V

    .line 198
    return-void
.end method

.method public constructor <init>(S)V
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 202
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>([B)V

    .line 203
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/Iso7816;-><init>([B)V

    .line 207
    return-void
.end method

.method public static read([BI)Lcom/alipay/nfc/tech/Iso7816$BerT;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerT;

    .line 193
    invoke-static {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$BerT;->test([BI)I

    move-result v1

    add-int/2addr v1, p1

    .line 192
    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;-><init>([B)V

    return-object v0
.end method

.method public static test([BI)I
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x1

    .line 182
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_0

    .line 183
    :goto_0
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_0
    return v0

    .line 184
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final hasChild()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lcom/alipay/nfc/tech/Iso7816$BerT;->data:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
