.class public Lcom/alipay/nfc/tech/FeliCa;
.super Ljava/lang/Object;
.source "FeliCa.java"


# static fields
.field public static final CMD_AUTHENTICATION1:B = 0x10t

.field public static final CMD_AUTHENTICATION2:B = 0x12t

.field public static final CMD_POLLING:B = 0x0t

.field public static final CMD_READ:B = 0x14t

.field public static final CMD_READ_WO_ENCRYPTION:B = 0x6t

.field public static final CMD_REQUEST_RESPONSE:B = 0x4t

.field public static final CMD_REQUEST_SERVICE:B = 0x2t

.field public static final CMD_REQUEST_SYSTEMCODE:B = 0xct

.field public static final CMD_SEARCH_SERVICECODE:B = 0xat

.field public static final CMD_WRITE:B = 0x16t

.field public static final CMD_WRITE_WO_ENCRYPTION:B = 0x8t

.field public static final EMPTY:[B

.field public static final RSP_AUTHENTICATION1:B = 0x11t

.field public static final RSP_AUTHENTICATION2:B = 0x13t

.field public static final RSP_POLLING:B = 0x1t

.field public static final RSP_READ:B = 0x15t

.field public static final RSP_READ_WO_ENCRYPTION:B = 0x7t

.field public static final RSP_REQUEST_RESPONSE:B = 0x5t

.field public static final RSP_REQUEST_SERVICE:B = 0x3t

.field public static final RSP_REQUEST_SYSTEMCODE:B = 0xdt

.field public static final RSP_SEARCH_SERVICECODE:B = 0xbt

.field public static final RSP_WRITE:B = 0x17t

.field public static final RSP_WRITE_WO_ENCRYPTION:B = 0x9t

.field public static final SRV_FELICA_LITE_READONLY:I = 0xb00

.field public static final SRV_FELICA_LITE_READWRITE:I = 0x900

.field public static final STA1_ERROR:I = 0xff

.field public static final STA1_NORMAL:I = 0x0

.field public static final STA2_ERROR_FLOWN:I = 0x2

.field public static final STA2_ERROR_LENGTH:I = 0x1

.field public static final STA2_ERROR_MEMORY:I = 0x70

.field public static final STA2_ERROR_WRITELIMIT:I = 0x71

.field public static final STA2_NORMAL:I = 0x0

.field public static final SYS_ANY:I = 0xffff

.field public static final SYS_COMMON:I = 0xfe00

.field public static final SYS_FELICA_LITE:I = 0x88b4


# instance fields
.field protected data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/nfc/tech/FeliCa;->EMPTY:[B

    .line 26
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    sget-object p1, Lcom/alipay/nfc/tech/FeliCa;->EMPTY:[B

    :cond_0
    iput-object p1, p0, Lcom/alipay/nfc/tech/FeliCa;->data:[B

    .line 36
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa;->data:[B

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa;->data:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
