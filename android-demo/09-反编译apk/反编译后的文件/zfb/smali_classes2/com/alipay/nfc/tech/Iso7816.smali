.class public Lcom/alipay/nfc/tech/Iso7816;
.super Ljava/lang/Object;
.source "Iso7816.java"


# static fields
.field public static final EMPTY:[B

.field public static final SW_APPLET_SELECT_FAILED:S = 0x6999s

.field public static final SW_BYTES_REMAINING_00:S = 0x6100s

.field public static final SW_CLA_NOT_SUPPORTED:S = 0x6e00s

.field public static final SW_COMMAND_NOT_ALLOWED:S = 0x6986s

.field public static final SW_CONDITIONS_NOT_SATISFIED:S = 0x6985s

.field public static final SW_CORRECT_LENGTH_00:S = 0x6c00s

.field public static final SW_DATA_INVALID:S = 0x6984s

.field public static final SW_FILE_FULL:S = 0x6a84s

.field public static final SW_FILE_INVALID:S = 0x6983s

.field public static final SW_FILE_NOT_FOUND:S = 0x6a82s

.field public static final SW_FUNC_NOT_SUPPORTED:S = 0x6a81s

.field public static final SW_INCORRECT_P1P2:S = 0x6a86s

.field public static final SW_INS_NOT_SUPPORTED:S = 0x6d00s

.field public static final SW_NO_ERROR:S = -0x7000s

.field public static final SW_RECORD_NOT_FOUND:S = 0x6a83s

.field public static final SW_SECURITY_STATUS_NOT_SATISFIED:S = 0x6982s

.field public static final SW_UNKNOWN:S = 0x6f00s

.field public static final SW_WRONG_DATA:S = 0x6a80s

.field public static final SW_WRONG_LENGTH:S = 0x6700s

.field public static final SW_WRONG_P1P2:S = 0x6b00s


# instance fields
.field protected data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816;->EMPTY:[B

    .line 27
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/alipay/nfc/tech/Iso7816;->EMPTY:[B

    iput-object v0, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    .line 34
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    sget-object p1, Lcom/alipay/nfc/tech/Iso7816;->EMPTY:[B

    :cond_0
    iput-object p1, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    .line 38
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    return-object v0
.end method

.method public match(B)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    array-length v2, v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    aget-byte v2, v2, v1

    if-ne v2, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public match(S)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    .line 61
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 62
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    .line 63
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 64
    aget-byte v5, v2, v1

    if-ne v5, v4, :cond_0

    aget-byte v2, v2, v0

    if-ne v2, v3, :cond_0

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method public match([B)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/nfc/tech/Iso7816;->match([BI)Z

    move-result v0

    return v0
.end method

.method public match([BI)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v3, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    .line 46
    array-length v1, v3

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_0

    .line 47
    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_2

    .line 52
    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 47
    :cond_2
    aget-byte v5, v3, v1

    .line 48
    add-int/lit8 v2, p2, 0x1

    aget-byte v6, p1, p2

    if-ne v5, v6, :cond_1

    .line 47
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
